class FoodInHarvestSerializer < ActiveModel::Serializer
  attributes :id
  has_one :food
  has_one :harvest
end
