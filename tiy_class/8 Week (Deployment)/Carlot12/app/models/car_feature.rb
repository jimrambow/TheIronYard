class CarFeature < ActiveRecord::Base
  belongs_to :car
  belongs_to :feature
end
