# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_04_031017) do
  create_table "books", force: :cascade do |t|
    t.string "mahs"
    t.string "hoten"
    t.string "lop"
    t.string "manganh"
    t.string "tensach"
    t.string "tentacgia"
    t.string "soBM"
    t.date "ngaymuon"
    t.date "ngaytra"
    t.text "ghichu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friends", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "twiter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qlbooks", force: :cascade do |t|
    t.string "mahs_262"
    t.string "hoten_262"
    t.string "lop_262"
    t.string "masach_262"
    t.string "tensach_262"
    t.string "tentacgia_262"
    t.string "soBM_262"
    t.date "ngaymuon_262"
    t.date "ngaytra_262"
    t.text "ghichu_262"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
