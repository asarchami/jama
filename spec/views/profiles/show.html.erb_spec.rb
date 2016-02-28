require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
