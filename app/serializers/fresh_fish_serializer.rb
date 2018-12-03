class FreshFishSerializer < ActiveModel::Serializer
  attributes :id, :final_weight, :size
  has_one :harvest
end
