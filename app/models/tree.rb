class Tree < ApplicationRecord
  belongs_to :user

  validates :name, :description, :localisation, :price, :photo, presence: true
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end
