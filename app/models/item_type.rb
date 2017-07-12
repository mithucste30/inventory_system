class ItemType
  include Mongoid::Document
  include Columns
  field :name, type: String

  embeds_many :item_fields

  accepts_nested_attributes_for :item_fields, allow_destroy: true
end
