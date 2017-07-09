class ItemType
  include Mongoid::Document
  include Columns
  field :name, type: String
end
