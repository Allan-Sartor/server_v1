class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :title, :amount, :description
  has_one :category
end
