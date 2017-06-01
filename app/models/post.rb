class Post < ActiveRecord::Base
    has_many :comments
    mount_uploader :img_url, ImageUploader
end
