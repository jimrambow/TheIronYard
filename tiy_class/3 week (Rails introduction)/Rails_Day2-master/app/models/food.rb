class Food < ActiveRecord::Base
  # validates :name, :cost, presence: true

  validates :name, presence: true

  # You can validate multiple things on each attribute. For instance, you can say "presence" to validate that it exists, and you can also validate a range of numbers
  validates :cost, presence: true
end
