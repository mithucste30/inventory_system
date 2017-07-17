class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  include Columns

  field :name, type: String
  field :description, type: String
  field :count, type: Integer
  field :properties, type: Hash
  field :picture, type: String

  belongs_to :item_type
  belongs_to :item_field
  belongs_to :container

  validates_presence_of :item_type_id

  mount_uploader :picture, PictureUploader

end
