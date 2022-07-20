class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :title, :typing, :categories, :amount
end
