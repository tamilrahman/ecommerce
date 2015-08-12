class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :order_items, dependent: :destroy
  belongs_to :user

  field :user_id, type: BSON::ObjectId
  field :status, type: String
end
