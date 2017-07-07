class Dose < ApplicationRecord
  validates :description, presence: true
  validates_uniqueness_of :ingredient, through: :cocktail
  belongs_to :cocktail
  belongs_to :ingredient

  DOSES = ["a pinch of", "a dash of", "a spoonful of", "a dollop of", "a whole lotta"]
end
