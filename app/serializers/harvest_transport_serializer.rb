class HarvestTransportSerializer < ActiveModel::Serializer
  attributes :id, :transport_date, :transport_origin, :transport_destination
  has_one :harvest
end
