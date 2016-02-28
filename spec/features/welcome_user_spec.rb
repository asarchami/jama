require 'rails_helper'

feature "User opens the application" do

  before do
    @john = User.create!(email: 'john@example.com', password: 'password')
    @post = Post.create!(title: 'simple title', body: 'simple title\'s body', user: @john)
  end

  scenario "User is not logged in" do
    visit "/"

    expect(page).to have_link('Sign up', href: new_user_registration_path)
    expect(page).to have_link('Sign in', href: new_user_session_path)
  end

  scenario "Logged in user should see posts" do
    login_as(@john)
    visit "/"

    expect(page).not_to have_link('Sign up', href: new_user_registration_path)
    expect(page).not_to have_link('Sign in', href: new_user_session_path)
  end
end
