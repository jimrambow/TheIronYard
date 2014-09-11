require 'rails_helper'

RSpec.describe Patient, :type => :model do

  describe Patient do
    it { should validate_presence_of(:first_name) }
  end
end