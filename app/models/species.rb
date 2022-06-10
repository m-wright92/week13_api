class Species < ApplicationRecord
  has_many :pets
  accepts_nested_attributes_for :pets
  validates :species_name, presence: true
  validates :latin_name, presence: true
end