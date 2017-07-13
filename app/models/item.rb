class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  include Columns

  field :name, type: String
  field :description, type: String
  field :count, type: Integer
  field :properties, type: Hash

  belongs_to :item_type
  belongs_to :item_field
  belongs_to :container

  validates_presence_of :item_type_id

end
