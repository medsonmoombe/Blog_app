ActiveRecord::Schema[7.0].define(version: 20_220_815_175_714) do # rubocop:todo Metrics/BlockLength
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'comments', force: :cascade do |t|
    t.text 'text'
    t.bigint 'author_id', null: false
    t.bigint 'post_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['author_id'], name: 'index_comments_on_author_id'
    t.index ['post_id'], name: 'index_comments_on_post_id'
  end

  create_table 'likes', force: :cascade do |t|
    t.bigint 'author_id', null: false
    t.bigint 'post_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['author_id'], name: 'index_likes_on_author_id'
    t.index ['post_id'], name: 'index_likes_on_post_id'
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'title'
    t.text 'text'
    t.integer 'comments_counter'
    t.integer 'likes_counter'
    t.bigint 'author_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['author_id'], name: 'index_posts_on_author_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'photo'
    t.text 'bio'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'posts_counter'
  end

  add_foreign_key 'comments', 'posts'
  add_foreign_key 'comments', 'users', column: 'author_id'
  add_foreign_key 'likes', 'posts'
  add_foreign_key 'likes', 'users', column: 'author_id'
  add_foreign_key 'posts', 'users', column: 'author_id'
end
