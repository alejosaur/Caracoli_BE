class FoodInLotSerializer < ActiveModel::Serializer
  attributes :id
  has_one :lot
  has_one :food
end
