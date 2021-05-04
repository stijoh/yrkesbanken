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

ActiveRecord::Schema.define(version: 2021_05_04_143038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "fags", force: :cascade do |t|
    t.string "navn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fagutrykks", force: :cascade do |t|
    t.string "navn"
    t.bigint "yrke_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yrke_id"], name: "index_fagutrykks_on_yrke_id"
  end

  create_table "kompetansemaals", force: :cascade do |t|
    t.string "navn"
    t.text "beskrivelse"
    t.bigint "fag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fag_id"], name: "index_kompetansemaals_on_fag_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "navn"
    t.bigint "yrke_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yrke_id"], name: "index_materials_on_yrke_id"
  end

  create_table "oppgavers", force: :cascade do |t|
    t.string "navn"
    t.text "beskrivelse"
    t.bigint "tema_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tema_id"], name: "index_oppgavers_on_tema_id"
  end

  create_table "saertrekks", force: :cascade do |t|
    t.string "navn"
    t.bigint "yrke_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yrke_id"], name: "index_saertrekks_on_yrke_id"
  end

  create_table "teknikks", force: :cascade do |t|
    t.string "navn"
    t.bigint "yrke_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yrke_id"], name: "index_teknikks_on_yrke_id"
  end

  create_table "temas", force: :cascade do |t|
    t.string "navn"
    t.bigint "fag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fag_id"], name: "index_temas_on_fag_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verktoys", force: :cascade do |t|
    t.string "navn"
    t.bigint "yrke_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yrke_id"], name: "index_verktoys_on_yrke_id"
  end

  create_table "yrke_temas", force: :cascade do |t|
    t.bigint "yrke_id", null: false
    t.bigint "tema_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tema_id"], name: "index_yrke_temas_on_tema_id"
    t.index ["yrke_id"], name: "index_yrke_temas_on_yrke_id"
  end

  create_table "yrkes", force: :cascade do |t|
    t.string "navn"
    t.bigint "tema_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tema_id"], name: "index_yrkes_on_tema_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "fagutrykks", "yrkes"
  add_foreign_key "kompetansemaals", "fags"
  add_foreign_key "materials", "yrkes"
  add_foreign_key "oppgavers", "temas"
  add_foreign_key "saertrekks", "yrkes"
  add_foreign_key "teknikks", "yrkes"
  add_foreign_key "temas", "fags"
  add_foreign_key "verktoys", "yrkes"
  add_foreign_key "yrke_temas", "temas"
  add_foreign_key "yrke_temas", "yrkes"
  add_foreign_key "yrkes", "temas"
end
