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

ActiveRecord::Schema.define(version: 20161003021119) do

  create_table "boleta", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "numero",     limit: 4
    t.integer  "monto",      limit: 4
    t.boolean  "factura"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "boletas", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "numero",     limit: 4
    t.integer  "monto",      limit: 4
    t.boolean  "factura"
    t.integer  "cantidad",   limit: 4
    t.integer  "total",      limit: 4
    t.text     "tipo",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "categorias", force: :cascade do |t|
    t.text     "nombre",      limit: 65535
    t.text     "abreviacion", limit: 65535
    t.boolean  "estado"
    t.string   "descripcion", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.text     "nombre",     limit: 65535
    t.integer  "comuna_id",  limit: 4
    t.text     "rut",        limit: 65535
    t.text     "domicilio",  limit: 65535
    t.integer  "telefono1",  limit: 4
    t.text     "email",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "clientes", ["comuna_id"], name: "fk_rails_5c24bd1eb2", using: :btree

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre",       limit: 255
    t.integer  "provincia_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comunas", ["provincia_id"], name: "fk_rails_23b5d4a1e4", using: :btree

  create_table "facturas", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.date     "fecha"
    t.integer  "numero",     limit: 4
    t.integer  "monto",      limit: 4
    t.integer  "cantidad",   limit: 4
    t.integer  "total",      limit: 4
    t.text     "tipo",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.text     "nombre",      limit: 65535
    t.text     "abreviacion", limit: 65535
    t.string   "descripcion", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "peoductos_tareas", id: false, force: :cascade do |t|
    t.integer "peoducto_id", limit: 4, null: false
    t.integer "tarea_id",    limit: 4, null: false
  end

  create_table "productos", force: :cascade do |t|
    t.text     "nombre",        limit: 65535
    t.string   "abreviacion",   limit: 255
    t.text     "codigo_barras", limit: 65535
    t.integer  "comision",      limit: 4
    t.integer  "stock",         limit: 4
    t.integer  "stockminimo",   limit: 4
    t.integer  "precio_compra", limit: 4
    t.integer  "precio_venta",  limit: 4
    t.integer  "descuento",     limit: 4
    t.text     "descripcion",   limit: 65535
    t.string   "foto",          limit: 255
    t.integer  "proveedor_id",  limit: 4
    t.integer  "categoria_id",  limit: 4
    t.integer  "marca_id",      limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "productos", ["categoria_id"], name: "fk_rails_d08a14d98a", using: :btree
  add_index "productos", ["marca_id"], name: "fk_rails_e752c6fdd1", using: :btree
  add_index "productos", ["proveedor_id"], name: "fk_rails_231f91056b", using: :btree

  create_table "productos_tareas", id: false, force: :cascade do |t|
    t.integer "producto_id", limit: 4, null: false
    t.integer "tarea_id",    limit: 4, null: false
  end

  create_table "productos_ventas", id: false, force: :cascade do |t|
    t.integer "producto_id", limit: 4, null: false
    t.integer "venta_id",    limit: 4, null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.text     "nombre",       limit: 65535
    t.string   "abreviacion",  limit: 255
    t.integer  "comuna_id",    limit: 4
    t.text     "razon_social", limit: 65535
    t.text     "rut",          limit: 65535
    t.text     "domicilio",    limit: 65535
    t.integer  "fax",          limit: 4
    t.integer  "telefono1",    limit: 4
    t.integer  "telefono2",    limit: 4
    t.text     "web",          limit: 65535
    t.text     "email",        limit: 65535
    t.text     "descripcion",  limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "proveedors", ["comuna_id"], name: "fk_rails_8f2b7276b8", using: :btree

  create_table "provincias", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.integer  "region_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "provincias", ["region_id"], name: "fk_rails_79c5aabd3c", using: :btree

  create_table "regiones", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "corfo",      limit: 255
    t.string   "codigo",     limit: 255
    t.integer  "numero",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tareas", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.integer  "numero",     limit: 4
    t.date     "fecha"
    t.integer  "monto",      limit: 4
    t.integer  "factura_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tareas", ["factura_id"], name: "index_tareas_on_factura_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "nombre",                 limit: 255
    t.string   "calle",                  limit: 255
    t.integer  "telefono",               limit: 4
    t.integer  "telefono1",              limit: 4
    t.integer  "rol_id",                 limit: 4
    t.integer  "comuna_id",              limit: 4
    t.datetime "fechaingreso"
    t.integer  "sueldo",                 limit: 4
    t.string   "rut",                    limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.boolean  "admin",                              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "venta", force: :cascade do |t|
    t.integer  "numero",      limit: 4
    t.integer  "cliente_id",  limit: 4
    t.integer  "usuario_id",  limit: 4
    t.integer  "producto_id", limit: 4
    t.integer  "boleta_id",   limit: 4
    t.datetime "fecha"
    t.integer  "monto",       limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "ventas", force: :cascade do |t|
    t.integer  "numero",      limit: 4
    t.integer  "cliente_id",  limit: 4
    t.integer  "usuario_id",  limit: 4
    t.integer  "producto_id", limit: 4
    t.datetime "fecha"
    t.integer  "monto",       limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "boleta_id",   limit: 4
  end

  add_index "ventas", ["boleta_id"], name: "fk_rails_a3016acebf", using: :btree
  add_index "ventas", ["cliente_id"], name: "fk_rails_a70a7aa019", using: :btree
  add_index "ventas", ["producto_id"], name: "fk_rails_6d564d1363", using: :btree
  add_index "ventas", ["usuario_id"], name: "fk_rails_c97c3d8eda", using: :btree

  add_foreign_key "clientes", "comunas"
  add_foreign_key "comunas", "provincias"
  add_foreign_key "productos", "categorias"
  add_foreign_key "productos", "marcas"
  add_foreign_key "productos", "proveedors"
  add_foreign_key "proveedors", "comunas"
  add_foreign_key "provincias", "regiones", column: "region_id"
  add_foreign_key "tareas", "facturas"
  add_foreign_key "ventas", "boletas"
  add_foreign_key "ventas", "clientes"
  add_foreign_key "ventas", "productos"
  add_foreign_key "ventas", "users", column: "usuario_id"
end
