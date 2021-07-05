class Post < ApplicationRecord
    has_many :post_categories
    has_many :categories, through: :post_categories
    mount_uploader :img, ImageUploader
end
