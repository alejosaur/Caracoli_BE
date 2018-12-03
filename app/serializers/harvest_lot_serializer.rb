class HarvestLotSerializer < ActiveModel::Serializer
  attributes :id
  has_one :lot
  has_one :harvest
end
