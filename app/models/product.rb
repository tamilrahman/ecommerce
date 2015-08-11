class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :price, type: Float
  field :description, type: String
  field :stock, type: Integer, default: 0

  validates_presence_of :title, :price, :description
end
