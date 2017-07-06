class Dose < ApplicationRecord
  validates :description, presence: true
  validates_uniqueness_of :ingredient, through: :cocktail
  belongs_to :cocktail
  belongs_to :ingredient

  DOSES = ["a pinch of", "a dash of", "a spoonful of", "a dollop of", "a whole lotta"]
  # DOSES_HASH = {
  #   1: "a pinch of",
  #   2: "a dash of",
  #   3: "a spoonful of",
  #   4: "a dollop of",
  #   5: "a whole lotta"
  # }


end
