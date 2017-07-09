class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  include Columns

  field :name, type: String
  field :description, type: String
  field :count, type: Integer

end
