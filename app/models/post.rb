class Post < ApplicationRecord
    has_many_attached :photos
     mount_uploader :photos, PictureUploader
end
