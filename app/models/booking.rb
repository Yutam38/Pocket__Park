class Booking < ApplicationRecord
  belongs_to :timeslot
  belongs_to :user
  validates :timeslot_id, uniqueness: { scope: :user_id}
end
