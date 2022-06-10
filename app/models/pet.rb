class Pet < ApplicationRecord
  belongs_to :species
  validates :name, presence: true
  validates :klass, presence: true
  validates :level, presence: true
  validates_inclusion_of :level, in: 1..20
  validates :species, presence: true
end