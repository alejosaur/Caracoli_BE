class ClientSerializer < ActiveModel::Serializer
  attributes :id, :identification, :name, :address, :city, :phone, :email
end
