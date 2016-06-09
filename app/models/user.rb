class User < ActiveRecord::Base
  enum gender: ['male', 'female']
  has_many :pets
  validates :pets, presence: true
  accepts_nested_attributes_for :pets, allow_destroy: true
end
