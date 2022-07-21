class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :services, dependent: :destroy
end
