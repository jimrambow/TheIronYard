class Dealership < ActiveRecord::Base
  has_many :cars#, dependent: :destroy
  has_many :comments, as: :commentable

  validates :name, presence: true

  geocoded_by :address
  after_validation :geocode
end
