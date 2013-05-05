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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130501155500) do

  create_table "clientes", :force => true do |t|
    t.string   "NombreCompleto"
    t.date     "FechaNacimiento"
    t.string   "Sexo"
    t.integer  "Estatura"
    t.string   "Email"
    t.string   "Telefono"
    t.text     "Actividad"
    t.text     "Preferencias"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "pesajes", :force => true do |t|
    t.float    "peso"
    t.integer  "ComidasConProteinas"
    t.integer  "cliente_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "pesajes", ["cliente_id", "created_at"], :name => "index_pesajes_on_cliente_id_and_created_at"

end
