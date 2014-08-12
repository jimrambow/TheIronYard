class Medication < ActiveRecord::Base
  belongs_to :patient
  validates :name, presence: true
  validates :description, presence: true
  validates :patient_id, presence:true
end
