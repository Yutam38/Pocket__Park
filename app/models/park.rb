class Park < ApplicationRecord
  has_many :timeslots, dependent: :destroy
  has_many :bookings, through: :timeslot
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites
end
