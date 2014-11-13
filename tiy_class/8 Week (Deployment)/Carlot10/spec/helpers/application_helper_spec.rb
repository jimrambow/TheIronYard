require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the DudeHelper. For example:
#
# describe DudeHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, :type => :helper do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "should convert decimals to money" do
    expect(helper.to_money(2.23)).to eq("$2.23")
  end

  it "should convert decimals to money" do
    expect(helper.to_money(10)).to eq("$10.00")
  end

  it "should convert decimals to money" do
    expect(helper.to_money(10.328147328147832194)).to eq("$10.33")
  end
  
  it "should convert decimals to money and not be negative" do
    expect(helper.to_money(10.328147328147832194)).not_to include("-")
  end

  it "should convert decimals to money and return a string" do
    expect(helper.to_money(10.328147328147832194).class).not_to eq(Float)
    expect(helper.to_money(10.328147328147832194).class).not_to be(Integer)
  end

  # it "should return some login links" do
  #   expect(helper.user_login_links).to be("")
  # end

  it "should return active depending on which controller we are currently in" do
    params[:controller] = "welcome"
    # eq: if blah == "asdf"
    expect(helper.is_link_active?("welcome")).to eq("active")
    expect(helper.is_link_active?("dealerships")).not_to eq("active")
    expect(helper.is_link_active?("features")).not_to eq("active")
  end
end
