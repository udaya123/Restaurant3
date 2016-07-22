class Restaurant < ApplicationRecord
  attr_accessor :restaurant
  belongs_to :user
validates :name, presence: true
validates :address, presence: true
validates :city, presence: true
end
