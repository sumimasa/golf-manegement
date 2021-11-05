# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_05_000722) do

  create_table "scores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "score_1h", null: false
    t.integer "score_2h", null: false
    t.integer "score_3h", null: false
    t.integer "score_4h", null: false
    t.integer "score_5h", null: false
    t.integer "score_6h", null: false
    t.integer "score_7h", null: false
    t.integer "score_8h", null: false
    t.integer "score_9h", null: false
    t.integer "score_10h", null: false
    t.integer "score_11h", null: false
    t.integer "score_12h", null: false
    t.integer "score_13h", null: false
    t.integer "score_14h", null: false
    t.integer "score_15h", null: false
    t.integer "score_16h", null: false
    t.integer "score_17h", null: false
    t.integer "score_18h", null: false
    t.string "course_name", null: false
    t.integer "total_score"
    t.bigint "user_id", null: false
    t.date "play_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "memo"
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "sns_credentials", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_sns_credentials_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "scores", "users"
  add_foreign_key "sns_credentials", "users"
end
