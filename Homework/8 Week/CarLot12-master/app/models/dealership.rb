class Dealership < ActiveRecord::Base
  has_many :cars#, dependent: :destroy
  has_many :comments, as: :commentable

  validates :name, presence: true, if: Proc.new { |dealership| hey_manny?; dealership.name.include?("Belinda") }

  def hey_manny?
    p self
  end

  geocoded_by :address
  after_validation :geocode
end
