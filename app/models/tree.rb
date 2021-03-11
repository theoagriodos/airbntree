class Tree < ApplicationRecord
  belongs_to :user

  validates :name, :description, :localisation, :price, :photo, presence: true
end
