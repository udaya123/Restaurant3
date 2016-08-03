class Category < ApplicationRecord
  has_many :rest_cats
  has_many :restaurants, through: :rest_cats
end
