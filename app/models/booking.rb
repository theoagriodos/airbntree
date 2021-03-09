class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tree

  validates :booked_at, presence: true
end
