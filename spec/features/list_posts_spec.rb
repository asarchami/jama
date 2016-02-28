require 'rails_helper'

feature "user goes to posts" do
  
  before do
    @john = User.create!(email: 'john@example.com', password: 'password')
    @post = Post.create!(title: 'simple title', body: 'simple title\'s body', user: @john)
  end

  scenario "and he/she is not logged in" do
    visit "/posts"

    expect(page).to have_content("You should be logged in to see posts")
  end

  scenario "and wants to write a new post" do
    login_as(@john)
    visit "/posts"

    fill_in 'post[body]', with: 'This is my status update'
    click_button "post_submit"

    expect(page).to have_content("This is my status update")
    expect(current_path).to eq(posts_path)
  end

  scenario "and presses post without filling anything" do
    
    login_as(@john)
    visit "/posts"

    click_button "post_submit"

    expect(page).to have_content("Nothing on your mind?")
    expect(current_path).to eq(posts_path)
  end

  scenario "and comments on a post" do
    
  end

  scenario "and likes a post" do
    
  end

  scenario "and likes a comment" do
    
  end

  scenario "and likes a photo" do
    
  end

  scenario "and tries to edit his/hers post" do
    
  end
  
  scenario "and clicks on someones profile pic" do
    
  end

end
