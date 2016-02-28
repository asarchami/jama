require 'rails_helper'

feature "Sign out signed in user" do
  
  before do
    @john = User.create!(email: 'john@example.com', password: 'password')

    login_as(@john)
  end

  scenario "user clicks sign out link" do
    visit "/"
    click_link "Sign out"
    expect(page).to have_content("Signed out successfully")
  end


end 
