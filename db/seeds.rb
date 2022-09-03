# User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
# User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
# User.create(name: 'Daniel', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Software developer from zambia.')
# Post.create(author_id: 1, title: 'Hello', text: 'This is my first post')
# Post.create(author_id: 1, title: 'software developer', text: 'This is a post about software development')
# Post.create(author_id: 2, title: 'Rails', text: 'This a post' * 20)
# Post.create(author_id: 3, title: 'Javascript', text: 'This is my post about javascript' * 20)
# Post.create(author_id: 2, title: 'best coding practices', text: 'This is a post about best coding practices' * 20)
# Post.create(author_id: 3, title: 'Hello', text: 'This is my first post' * 20)

# Comment.create(post_id: 1, author_id: 1, text: 'Hi Tom!, nice article')
# Comment.create(post_id: 2, author_id: 2, text: 'lily you are the best!')
# Comment.create(post_id: 3, author_id: 3, text: 'Thanks daniel, nice article!')

# Comment.create(post_id: 1, author_id: 1, text: 'Hi Tom!, nice article')
# Comment.create(post_id: 2, author_id: 2, text: 'tom you are the best!')
# Comment.create(post_id: 3, author_id: 3, text: 'Thanks daniel, nice article!')
# curl -XPOST -H "Content-Type: application/json" -d '{ "user": { "name": "Alex", "email": "Alex@gmail.com", "password": "1234567", "confirm_password": "1234567" } }' http://localhost:3000/users
