require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user_id => 1,
      :current_pic => 1,
      :current_cover => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :website => "MyString",
      :phone => "MyString",
      :country => "MyString",
      :city => "MyString",
      :address => "MyText",
      :visible => false
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_current_pic[name=?]", "profile[current_pic]"

      assert_select "input#profile_current_cover[name=?]", "profile[current_cover]"

      assert_select "input#profile_first_name[name=?]", "profile[first_name]"

      assert_select "input#profile_last_name[name=?]", "profile[last_name]"

      assert_select "input#profile_website[name=?]", "profile[website]"

      assert_select "input#profile_phone[name=?]", "profile[phone]"

      assert_select "input#profile_country[name=?]", "profile[country]"

      assert_select "input#profile_city[name=?]", "profile[city]"

      assert_select "textarea#profile_address[name=?]", "profile[address]"

      assert_select "input#profile_visible[name=?]", "profile[visible]"
    end
  end
end
