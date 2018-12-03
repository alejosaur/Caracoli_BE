class LotSerializer < ActiveModel::Serializer
  attributes :id, :males, :females, :species, :weight, :date
  has_one :fry_farms
end
