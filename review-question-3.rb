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
        @photos
    end

    def add_photos(photo)
        @photos.push(photo)
    end

end

class Photo

    def user=(owner)
        owner.add_photos(self)
        @user = owner
    end
    
    def user
        @user
    end
    
end

puts "DONE: ", sandwich_photo = Photo.new
puts "DONE: ", sophie = User.new('Sophie')
puts "DONE: ", sandwich_photo.user = sophie
puts "DONE: ", sandwich_photo.user.name 

puts "NOT DONE"

# binding.pry
puts "Photos: ", sophie.photos
# => [#<Photo:0x00007fae2880b370>]

binding.pry
p sandwich_photo.comments
# => []

p sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
p sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

# p Comment.all
#=> [#<Comment:0x00007fae28043700>]
