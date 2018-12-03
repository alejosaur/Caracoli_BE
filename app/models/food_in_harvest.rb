class FoodInHarvest < ApplicationRecord
  belongs_to :food
  belongs_to :harvest
end
