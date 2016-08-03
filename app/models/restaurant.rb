class Restaurant < ApplicationRecord
  attr_accessor :restaurant
  belongs_to :user
  has_many :reservations
  has_many :stars
  has_many :rest_cats
  has_many :categories, through: :rest_cats
validates :address, presence: true
validates :city, presence: true
end
