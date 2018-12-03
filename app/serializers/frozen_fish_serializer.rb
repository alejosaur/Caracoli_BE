class FrozenFishSerializer < ActiveModel::Serializer
  attributes :id, :final_weight, :initial_weight, :final_weight, :size, :packing_date
  has_one :harvest
end
