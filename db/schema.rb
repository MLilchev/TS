# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_29_122817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.integer "episode"
    t.integer "fip"
    t.text "narrative"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_episodes_on_state_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "event"
    t.integer "begin_ym"
    t.integer "begin_day"
    t.integer "begin_time"
    t.integer "end_ym"
    t.integer "end_day"
    t.integer "end_time"
    t.integer "year"
    t.string "month"
    t.string "begin_dt"
    t.string "end_dt"
    t.string "damage"
    t.string "tor_f_scale"
    t.float "tor_length"
    t.integer "tor_width"
    t.string "begin_loc"
    t.string "end_loc"
    t.float "begin_lat"
    t.float "end_lat"
    t.float "begin_lon"
    t.float "end_lon"
    t.text "narrative"
    t.integer "episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "episode"
    t.index ["episode_id"], name: "index_events_on_episode_id"
  end

  create_table "geodata", force: :cascade do |t|
    t.integer "EVENT_ID"
    t.string "STATE"
    t.integer "STATE_FIPS"
    t.string "BEGIN_LOCATION"
    t.string "END_LOCATION"
    t.float "BEGIN_LAT"
    t.float "BEGIN_LON"
    t.float "END_LAT"
    t.float "END_LON"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.integer "fip"
    t.string "name"
    t.string "code"
    t.float "lat"
    t.float "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
