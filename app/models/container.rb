class Container

  include Mongoid::Document
  include Mongoid::Timestamps
  include Columns

  field :name, type: String
  field :picture, type: String

  has_many :child_containers, class_name: 'Container'
  belongs_to :parent_container, class_name: 'Container', optional: true

  mount_uploader :picture, PictureUploader
end
