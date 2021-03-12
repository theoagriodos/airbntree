class Tree < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  validates :name, :description, :localisation, :price, presence: true
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end
