class FoodInLot < ApplicationRecord
  belongs_to :lot
  belongs_to :food
end
