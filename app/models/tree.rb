class Tree < ApplicationRecord
  belongs_to :user

  validates :name, :description, :localisation, :price, presence: true
end
