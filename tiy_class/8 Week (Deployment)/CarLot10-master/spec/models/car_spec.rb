require 'rails_helper'

RSpec.describe Car, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  subject do
    Car.new({
      make: "Chrysler",
      model: "Town and Country",
      year: 2014,
      base_cost: 20134.22,
      features: []
    })    
  end

  let(:feature1) do
    Feature.new({
      cost: 20.12
    })
  end

  # it { should belong_to(:dealership) }
  describe "full_name" do
    it "should return the full name of a car object" do
      expect(subject.full_name).to include("Chrysler")
      expect(subject.full_name).to include("2014")
      expect(subject.full_name).to include("Town and Country")
    end

    it "should not return empty strings for a car object" do
      expect(subject.full_name).not_to include("Dodge")
      expect(subject.full_name).not_to be("")
    end
  end

  it "should sum the cost of all of the features for the car object" do
    subject.features = [feature1]
    expect(subject.total_feature_cost).to be(20.12)
  end

  it "should sum the cost of all of the features for the car object" do
    feature2 = Feature.new({
      cost: 300.34
    })
    subject.features = [feature1, feature2]
    expect(subject.total_feature_cost).to be(320.46)
  end

  it "should sum the cost of all of the features for the car object" do
    feature2 = Feature.new({
      cost: 300.34
    })
    feature3 = Feature.new({
      cost: 7000.34
    })
    feature4 = Feature.new({
      cost: 2.34
    })
    feature5 = Feature.new({
      cost: 8.52
    })
    subject.features = [feature1, feature2, feature3, feature4, feature5]
    expect(subject.total_feature_cost).to be(7331.66)
  end

  it "should not calculate the feature costs at a negative value" do
    subject.features = [feature1]
    expect(subject.total_feature_cost).to_not be < 0
  end

  it "should calculate the total cost of the entire car plus features" do
    subject.features = [feature1]
    expect(subject.total_cost).to be(20154.34)
  end

end
