class Product < ApplicationRecord
  belongs_to :category, dependent: :destroy
end
