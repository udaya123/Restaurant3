class User < ApplicationRecord
  validates :email, :presence => true, :uniqueness => true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :restaurants
         has_many :reservations
         has_many :stars
         validates :email, presence: true
end
