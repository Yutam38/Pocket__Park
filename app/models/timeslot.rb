class Timeslot < ApplicationRecord
  belongs_to :park
  has_one :booking, dependent: :destroy
end
