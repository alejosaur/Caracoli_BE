class DispatchFrozenSerializer < ActiveModel::Serializer
  attributes :id
  has_one :frozen_fish
  has_one :dispatch
end
