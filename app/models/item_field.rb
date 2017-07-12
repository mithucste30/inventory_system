class ItemField
  attr_accessor :input_values_string
  include Mongoid::Document
  include Columns
  field :input_title, type: String
  field :input_type, type: String
  field :required, type: Mongoid::Boolean
  field :input_values, type: Array, default: []

  embedded_in :item_type

  before_validation :build_input_values

  def build_input_values
    self.input_values = self.input_values_string.split(',')
  end
end
