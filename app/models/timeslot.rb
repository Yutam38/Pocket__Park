class Timeslot < ApplicationRecord
  belongs_to :park
  has_many :bookings, dependent: :destroy
end
