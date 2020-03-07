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

ActiveRecord::Schema.define(version: 2020_03_07_185634) do

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "defenses", force: :cascade do |t|
    t.bigint "proceeding_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["proceeding_id"], name: "index_defenses_on_proceeding_id"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "cid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cid"], name: "index_diseases_on_cid", unique: true
  end

  create_table "medications", force: :cascade do |t|
    t.bigint "disease_id", null: false
    t.bigint "medicine_id", null: false
    t.integer "situation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disease_id"], name: "index_medications_on_disease_id"
    t.index ["medicine_id"], name: "index_medications_on_medicine_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.text "composition", array: true
    t.text "description", array: true
    t.integer "group"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "cep"
    t.string "city"
    t.string "street"
    t.string "district"
    t.string "state"
    t.string "number"
    t.string "complement"
    t.string "nacionality"
    t.string "civil_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proceedings", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "medication_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medication_id"], name: "index_proceedings_on_medication_id"
    t.index ["patient_id"], name: "index_proceedings_on_patient_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "defenses", "proceedings"
  add_foreign_key "medications", "diseases"
  add_foreign_key "medications", "medicines"
  add_foreign_key "proceedings", "medications"
  add_foreign_key "proceedings", "patients"
end
