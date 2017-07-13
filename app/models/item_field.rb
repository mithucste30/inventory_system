class ItemField
  attr_accessor :input_values_string
  include Mongoid::Document
  include Columns
  field :name, type: String
  field :type, type: String
  field :required, type: Mongoid::Boolean
  field :allowed_values, type: Array, default: []

  embedded_in :item_type

  before_validation :build_allowed_values

  def build_allowed_values
    self.allowed_values = self.input_values_string ? self.input_values_string.split(',') : []
  end
end
