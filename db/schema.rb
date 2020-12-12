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

ActiveRecord::Schema.define(version: 2020_12_05_132917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "open_files", force: :cascade do |t|
    t.integer "id_user"
    t.integer "id_file"
    t.string "link"
    t.string "password_file"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_files", force: :cascade do |t|
    t.integer "id_user"
    t.integer "id_file"
    t.string "name"
    t.string "location"
    t.boolean "directory?"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "id_user"
    t.string "login"
    t.string "mail"
    t.string "password"
    t.integer "admission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
