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

  def full_name
    "#{make} - #{model} - #{year}"
  end

  def total_cost
    self.base_cost + self.total_feature_cost
  end

  def total_feature_cost
    current_total = 0.0
    self.features.each do |feature|
      current_total += feature.cost
    end
    current_total.round(2)
  end

end
