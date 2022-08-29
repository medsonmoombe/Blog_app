require 'rails_helper'
# User index page:

# I can see the username of all other users.
# I can see the profile picture for each user.
# I can see the number of posts each user has written.
# When I click on a user, I am redirected to that user's show page.

describe 'the signin process', type: :feature do
  before :each do
    @first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                              bio: 'Teacher from Mexico.')
    @second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                               bio: 'Teacher from Poland.')

    Post.create(author_id: 1, title: 'Hello', text: 'This is my first post')
    Post.create(author_id: 1, title: 'software developer', text: 'This is a post about software development')
    Post.create(author_id: 2, title: 'Rails', text: 'This a post' * 20)
    Post.create(author_id: 2, title: 'Javascript', text: 'This is my post about javascript' * 20)

    Comment.create(post_id: 1, author_id: 1, text: 'Hi Tom!, nice article')
    Comment.create(post_id: 2, author_id: 2, text: 'lily you are the best!')
    Comment.create(post_id: 1, author_id: 1, text: 'Thanks daniel, nice article!')
  end
end
