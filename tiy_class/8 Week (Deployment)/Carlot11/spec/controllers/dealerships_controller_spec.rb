require 'rails_helper'

describe DealershipsController do
  # describe "" do
  # end  
  let(:dealership) { Dealership.create(name: "Ryan", description: "Ryan's Badass Shop of Ferrari's") }

  it "GET #index" do
    sign_in
    get :index
    expect(assigns(:dealerships).class).to eq(Dealership::ActiveRecord_Relation)
  end

  it 'GET #new' do
    sign_in
    get :new
    expect(assigns(:dealership).class).to eq(Dealership)
    expect(assigns(:dealership).new_record?).to eq(true)
  end
  
  describe "POST #create" do
    it 'successful creation' do
      sign_in
      expect {
        post :create, dealership: { name: "Anna", description: "We sell Chevy's better then anyone else." }
      }.to change(Dealership, :count).by(1)
      expect(response).to redirect_to dealerships_path
    end

    it "failed creation" do
      sign_in
      expect {
        post :create, dealership: { name: "" }
      }.not_to change(Dealership, :count)
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    it 'should find an object' do
      sign_in
      # get :edit, dealership_id: dealership, id: car
      get :edit, id: dealership
      expect(assigns(:dealership)).to eq(dealership)
      expect(assigns(:dealership).class).to eq(Dealership)
    end
  end

  describe "GET #show" do
    it 'should find an object and create a comment' do
      sign_in
      get :show, id: dealership
      
      expect(assigns(:dealership)).to eq(dealership)
      expect(assigns(:dealership).class).to eq(Dealership)

      expect(assigns(:comment).commentable).to eq(dealership)
      expect(assigns(:comment).class).to eq(Comment)
    end
  end
end
