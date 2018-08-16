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

ActiveRecord::Schema.define(version: 20180816134629) do

  create_table "areas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calificacions", force: :cascade do |t|
    t.integer "valor"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documentos", force: :cascade do |t|
    t.string "archivo"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lugars", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materia", force: :cascade do |t|
    t.string "nombre"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_materia_on_area_id"
  end

  create_table "tutoria", force: :cascade do |t|
    t.datetime "fecha"
    t.string "descripcion"
    t.float "presupuesto"
    t.integer "lugar_id"
    t.integer "materia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lugar_id"], name: "index_tutoria_on_lugar_id"
    t.index ["materia_id"], name: "index_tutoria_on_materia_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "documento"
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
