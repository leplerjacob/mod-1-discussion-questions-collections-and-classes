# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require 'pry'

class User
    attr_reader :name
    
    def initialize(name)
        @photos = []
        @name = name
    end

    def photos
        @photos << Photo.all_photos.select do |photo|
            photo.user == self
        end
        @photos
    end

end

class Photo

    @@photos = []
    
    def initialize
        @@photos.push(self)
        @comments = []
    end

    def user=(owner)
        @user = owner
    end
    
    def user
        @user
    end

    def self.all_photos
        @@photos
    end

    def comments
        Comment.all.select do |comment|
            self == comment.photo
        end
    end

    def make_comment(text)
        Comment.new(text, self)
    end
    
end

class Comment
    attr_reader :photo

    @@all_comments = []
    def initialize(comment, photo)
        @@all_comments << self
        @comment = comment
        @photo = photo
    end

    def self.all
        @@all_comments
    end
end

puts "DONE: ", sandwich_photo = Photo.new
puts "DONE: ", sophie = User.new('Sophie')
puts "DONE: ", sandwich_photo.user = sophie
puts "DONE: ", sandwich_photo.user.name 
puts "DONE: ", sophie.photos
puts "DONE: ", sandwich_photo.comments
puts "DONE: ", sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
puts "DONE: ", sandwich_photo.comments
puts "DONE: ",  Comment.all