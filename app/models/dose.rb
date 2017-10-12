class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail#, uniqunesss: { scope: :ingredient }
  validates :ingredient, uniqueness: { scope: :cocktail }
end
