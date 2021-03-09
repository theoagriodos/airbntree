class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tree

  validates :date, presence: true
end
