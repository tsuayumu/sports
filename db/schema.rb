# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20190209104043) do

  create_table "dream_lineup_manages", force: true do |t|
    t.string   "comment",    default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dream_lineups", force: true do |t|
    t.integer  "dream_player_id"
    t.integer  "dream_lineup_manage_id"
    t.integer  "order",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dream_lineups", ["dream_lineup_manage_id"], name: "index_dream_lineups_on_dream_lineup_manage_id", using: :btree

  create_table "dream_players", force: true do |t|
    t.decimal  "average",    precision: 4, scale: 3, default: 0.0, null: false
    t.integer  "rbi",                                default: 0,   null: false
    t.integer  "homerun",                            default: 0,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "steal",                              default: 0,   null: false
  end

  create_table "leagues", force: true do |t|
    t.string   "name",                   null: false
    t.string   "name_en",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",     default: 0, null: false
  end

  create_table "lineup_manages", force: true do |t|
    t.integer  "user_id"
    t.integer  "team_id",                null: false
    t.integer  "year",                   null: false
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "win",        default: 0, null: false
    t.integer  "lose",       default: 0, null: false
    t.integer  "draw",       default: 0, null: false
  end

  add_index "lineup_manages", ["team_id"], name: "index_lineup_manages_on_team_id", using: :btree
  add_index "lineup_manages", ["user_id"], name: "index_lineup_manages_on_user_id", using: :btree

  create_table "lineups", force: true do |t|
    t.integer "player_id"
    t.integer "lineup_manage_id"
    t.integer "order",            null: false
  end

  add_index "lineups", ["lineup_manage_id"], name: "index_lineups_on_lineup_manage_id", using: :btree

  create_table "opening_starting_lineup_comments", force: true do |t|
    t.integer  "opening_starting_lineup_id", null: false
    t.integer  "user_id"
    t.string   "comment",                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "opening_starting_lineup_comments", ["opening_starting_lineup_id"], name: "index_opening_starting_lineup_id", using: :btree
  add_index "opening_starting_lineup_comments", ["user_id"], name: "index_opening_starting_user_id", using: :btree

  create_table "player_record2017s", force: true do |t|
    t.integer  "player_id"
    t.decimal  "average",    precision: 4, scale: 3, default: 0.0, null: false
    t.integer  "rbi",                                default: 0,   null: false
    t.integer  "homerun",                            default: 0,   null: false
    t.integer  "match",                              default: 0,   null: false
    t.integer  "win",                                default: 0,   null: false
    t.integer  "defeat",                             default: 0,   null: false
    t.integer  "hold",                               default: 0,   null: false
    t.integer  "save_point",                         default: 0,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "era",        precision: 4, scale: 2, default: 0.0, null: false
  end

  add_index "player_record2017s", ["player_id"], name: "index_player_record2017s_on_player_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "name",                      null: false
    t.integer  "team_id",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "year",       default: 2017
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "ranking_manages", force: true do |t|
    t.integer  "user_id"
    t.string   "dopester"
    t.integer  "ranking_id"
    t.integer  "year",       null: false
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ranking_manages", ["league_id"], name: "index_ranking_manages_on_league_id", using: :btree
  add_index "ranking_manages", ["ranking_id"], name: "index_ranking_manages_on_ranking_id", using: :btree
  add_index "ranking_manages", ["user_id"], name: "index_ranking_manages_on_user_id", using: :btree

  create_table "rankings", force: true do |t|
    t.integer  "rank",       null: false
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rankings", ["team_id"], name: "index_rankings_on_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name",       null: false
    t.string   "name_en",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "league_id"
  end

  create_table "users", force: true do |t|
    t.string   "name",             null: false
    t.integer  "favorite_team_id"
    t.string   "email",            null: false
    t.string   "hashed_password",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["favorite_team_id"], name: "index_users_on_favorite_team_id", using: :btree

end
