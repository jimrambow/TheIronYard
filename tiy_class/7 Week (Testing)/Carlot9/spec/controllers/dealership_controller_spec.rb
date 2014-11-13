require 'rails_helper'

describe DealershipsController do
  # describe "" do
  # end
  let(:dealership) {Dealership.create(name: "Ryan", description: "Ryans badass shop of Ferrari's")}

  it "GET #index" do
    sign_in
    get :index
    expect(assigns(:dealerships).class).to eq(Dealership::ActiveRecord_Relation)
  end

  it 'GET #new'do
  sign_in
  get :new
  expect(assigns(:dealership).class).to eq(Dealership)
  expect(assigns(:dealership).new_record?).to eq(true)

  end

  describe 'POST #create' do
    it 'successful creation' do
      sign_in
      expect{
        post :create, dealership: {name:"Anna", description: "We sell Chevy's better then anyone else"}
    }.to change(Dealership, :count).by(1)
    expect(response).to redirect_to dealerships_path

  end

    it "failed creation" do
      sign_in
      expect {
        post :create, dealership: { name:"" }
      }.not_to change(dealership, :count)
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    it 'should find an object' do
      sign_in
      get :edit, id: dealership
      expect(assigns(:dealership)).to eq(dealership)
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

# stubbing means ignore whatever is stubbed
# going to stub out before action with this rails-helper the file is in spec support
# sign_in is our way of using the rails-helperfile that bypasses the devise gem
