

ActiveRecord::Schema[7.0].define(version: 2023_04_08_112425) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tweets", force: :cascade do |t|
    t.string "image_url"
    t.text "content"
    t.integer "likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_tweets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tweet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_user_tweets_on_tweet_id"
    t.index ["user_id"], name: "index_user_tweets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_tweets", "tweets"
  add_foreign_key "user_tweets", "users"
end
