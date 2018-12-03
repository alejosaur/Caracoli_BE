class DispatchFreshSerializer < ActiveModel::Serializer
  attributes :id
  has_one :fresh_fish
  has_one :dispatch
end
