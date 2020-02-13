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

ActiveRecord::Schema.define(version: 20200213071534) do

  create_table "juego_parametros", force: :cascade do |t|
    t.integer "NumColumna"
    t.integer "NumFila"
    t.integer "numMinas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "juegos", force: :cascade do |t|
    t.integer "Usuario"
    t.string "estatusJuego"
    t.boolean "ResultadoJuego"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
