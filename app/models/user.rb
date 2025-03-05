class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
<<<<<<< HEAD
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
=======
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :favourites
  has_many :favourite_parks, through: :favourites
>>>>>>> master
end
