require 'rails_helper'

feature "User wants to upload images to post" do
  before do
    @john = User.create!(email: 'john@example.com', password: 'password')
    @post = Post.create!(body: 'The body of the post!!!!', user: @john)
  end

  scenario "and adds a picture" do
    
  end

end
