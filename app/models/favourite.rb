class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :park

  validates :user_id, uniqueness: { scope: :park_id }
end
