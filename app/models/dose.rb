class Dose < ApplicationRecord
  validates :description, presence: true
  validates_uniqueness_of :ingredient, through: :cocktail
  belongs_to :cocktail
  belongs_to :ingredient
end
