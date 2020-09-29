class Post < ApplicationRecord
    extend FriendlyId
    has_one_attached :photo
    has_many_attached :photos
    friendly_id :name, use: :slugged

end

