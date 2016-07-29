class Restaurant < ApplicationRecord
  attr_accessor :restaurant
  belongs_to :user
  has_many :reservations
  has_many :stars
validates :name, presence: true
validates :address, presence: true
validates :city, presence: true
end
