class Restaurant < ApplicationRecord
  attr_accessor :restaurant
  belongs_to :user
end
