class ItemType
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::Validations
  include Columns
  field :name, type: String

  embeds_many :input_fields, class_name: 'ItemField'

  has_many :items

  validates_presence_of :name

  accepts_nested_attributes_for :input_fields, allow_destroy: true
end
