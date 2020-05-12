class Post < ApplicationRecord
  belongs_to :user

  has_many :post_categories
  has_many :categories, through: :post_categories

  accepts_nested_attributes_for :post_categories, allow_destroy: true, reject_if: :all_blank
end
