class Product
  include Mongoid::Document
  field :title, type: String
  field :price, type: Float
  field :description, type: String
end
