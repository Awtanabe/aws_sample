class Category < ApplicationRecord
  belongs_to :parent,  optional: true, class_name: :Category
  has_many :children, class_name: :Category, foreign_key: :parent_id

  has_many :post_categories, dependent: :destroy
  has_many :posts, through: :post_categories
end

