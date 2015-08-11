class OrderItem
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :order
  belongs_to :product

  field :product_id, type: BSON::ObjectId
  field :order_id, type: BSON::ObjectId
  field :quantity, type: Integer
end
