class Patient < ActiveRecord::Base
	validates :DateOB,
  date: { before: Proc.new { Date.today }, message: 'must be before current day, unless this person is a fucking time traveler!' },
  on: :create

  validates :first_name, length: { minimum: 2}
  validates :last_name, length: { minimum: 2}
  validates :gender, inclusion: [ "Male", "Female" ]
  validates :description, length: { minimum: 4}
end
