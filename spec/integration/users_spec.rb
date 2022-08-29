require 'rails_helper'
# User index page:

# I can see the profile picture for each user.
# When I click on a user, I am redirected to that user's show page.

describe 'the signin process', type: :feature do
  before :each do
    @first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                              bio: 'Teacher from Mexico.')
    @second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                               bio: 'Teacher from Poland.')

    Post.create(author: @first_user, title: 'Hello', text: 'This is my first post')
    Post.create(author: @first_user, title: 'software developer', text: 'This is a post about software development')
    Post.create(author: @second_user, title: 'Rails', text: 'This a post' * 20)
    Post.create(author: @second_user, title: 'Javascript', text: 'This is my post about javascript' * 20)

    Comment.create(post_id: 1, author_id: 1, text: 'Hi Tom!, nice article')
    Comment.create(post_id: 2, author_id: 2, text: 'lily you are the best!')
    Comment.create(post_id: 1, author_id: 1, text: 'Thanks daniel, nice article!')
  end

  context 'user index page' do

    it 'displays the username of all users' do
      visit root_path
      expect(page).to have_content('Tom')
      expect(page).to have_content('Lilly')
    end

   it 'should display the number of posts for each user' do
    visit root_path
    expect(page).to have_content('Number of posts: 2')
    expect(page).to have_content('Number of posts: 2')
   end

   it 'should display profile pic for each user' do
    visit root_path
    users = User.all.order(:id)
    profile_pic = page.all('img')
    expect(profile_pic[0][:src]).not_to be('')
    expect(profile_pic.length).to eq(users.length)
   end
  end
end
