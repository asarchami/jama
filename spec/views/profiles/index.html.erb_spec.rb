require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user_id => 1,
        :current_pic => 2,
        :current_cover => 3,
        :first_name => "First Name",
        :last_name => "Last Name",
        :website => "Website",
        :phone => "Phone",
        :country => "Country",
        :city => "City",
        :address => "MyText",
        :visible => false
      ),
      Profile.create!(
        :user_id => 1,
        :current_pic => 2,
        :current_cover => 3,
        :first_name => "First Name",
        :last_name => "Last Name",
        :website => "Website",
        :phone => "Phone",
        :country => "Country",
        :city => "City",
        :address => "MyText",
        :visible => false
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
