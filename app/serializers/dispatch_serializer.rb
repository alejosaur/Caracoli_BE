class DispatchSerializer < ActiveModel::Serializer
  attributes :id, :dispatch_date
  has_one :client
end
