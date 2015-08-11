class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :order_items, dependent: :destroy

  field :user_id, type: BSON::ObjectId
  field :status, type: String
end
