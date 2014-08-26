class Feature < ActiveRecord::Base
  has_many :car_features
  has_many :cars, through: :car_features
  # has_and_belongs_to_many
end
