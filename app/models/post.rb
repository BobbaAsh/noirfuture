class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
    has_one_attached :photo
    has_many_attached :photos

end

