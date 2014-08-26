class Dealership < ActiveRecord::Base
  has_many :cars#, dependent: :destroy
  has_many :comments, as: :commentable
end
