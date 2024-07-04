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

ActiveRecord::Schema[7.1].define(version: 2024_07_04_114655) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "subdomain"
    t.string "social_reason"
    t.string "siren"
    t.string "num_tva"
    t.string "address"
    t.string "postal_code"
    t.string "city"
    t.string "country"
    t.string "address2"
    t.string "addon"
    t.string "email"
    t.string "tel"
    t.text "footer_page"
    t.text "activity"
    t.string "logo"
    t.string "establishment"
    t.string "iban"
    t.string "bic"
    t.integer "taux_tva"
    t.string "prefix_facture"
    t.string "prefix_devis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
