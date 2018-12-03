class HarvestSerializer < ActiveModel::Serializer
  attributes :id, :harvest_date, :final_weight
  has_one :production_center
end
