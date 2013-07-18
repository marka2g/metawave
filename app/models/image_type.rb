class ImageType < ActiveRecord::Base
  attr_accessible :name, :crop_x, :crop_y
  has_and_belongs_to_many :dogs
  has_and_belongs_to_many :cats, :join_table => 'cats_image_types'
  validates :name, presence: true, :uniqueness => {:case_sensitive => false}
end