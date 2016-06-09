class Pet < ActiveRecord::Base
  enum diet: ["herbivorous","carnivorous"]
  enum gender: ["male","female"]
  enum type: ["dinosaur"]
  belongs_to :user

  validates :name, presence: true
end
