class Post < ActiveRecord::Base
    has_many :comments
    mount_uploader :image 
    
end
