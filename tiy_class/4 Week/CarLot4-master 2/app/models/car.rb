class Car < ActiveRecord::Base

  belongs_to :dealership
  has_many :comments, as: :commentable

  has_many :car_features
  has_many :features, through: :car_features

  include Workflow
  workflow do
    state :for_sale do
      event :reserve, transitions_to: :reserved
      event :sell, transitions_to: :sold
    end
    state :reserved do
      event :reneg, transitions_to: :for_sale
      event :sell, transitions_to: :sold
    end
    state :sold
  end
end
