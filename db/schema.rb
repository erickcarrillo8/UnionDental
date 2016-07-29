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

ActiveRecord::Schema.define(version: 20160729073708) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dentists", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "permission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "dentists", ["email"], name: "index_dentists_on_email", unique: true
  add_index "dentists", ["reset_password_token"], name: "index_dentists_on_reset_password_token", unique: true

  create_table "diagnosis", force: :cascade do |t|
    t.integer  "nopieza"
    t.text     "diagnostico"
    t.integer  "costo"
    t.date     "fecha"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "dentist_id"
    t.integer  "patient_id"
  end

  add_index "diagnosis", ["dentist_id"], name: "index_diagnosis_on_dentist_id"
  add_index "diagnosis", ["patient_id"], name: "index_diagnosis_on_patient_id"

  create_table "patients", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido_pat"
    t.string   "apellido_mat"
    t.text     "direccion"
    t.integer  "telefono"
    t.integer  "celular"
    t.string   "RFC"
    t.date     "fecha_nac"
    t.string   "religion"
    t.boolean  "buen_estado_saludo"
    t.boolean  "alergico_sustancia"
    t.boolean  "problemas_anestesia"
    t.boolean  "hemorragia"
    t.boolean  "embarazo"
    t.boolean  "diabates"
    t.boolean  "hipertencion"
    t.boolean  "fiebre_reumatica"
    t.boolean  "asma"
    t.boolean  "enfermades_respiratoras"
    t.boolean  "enfermedades_cardiovasculares"
    t.boolean  "dolor_boca"
    t.boolean  "sangrado_encia"
    t.boolean  "mal_olor_boca"
    t.boolean  "dientes_moviles"
    t.boolean  "dolor_abrir_cerrar_boca"
    t.boolean  "malos_habitos"
    t.boolean  "satisfecho"
    t.date     "ultima_visita"
    t.string   "tratamiento_adquirido"
    t.string   "motivo_consulta"
    t.boolean  "autorizacion"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "dentist_id"
  end

  add_index "patients", ["dentist_id"], name: "index_patients_on_dentist_id"

  create_table "treatments", force: :cascade do |t|
    t.text     "tratamiento"
    t.float    "abono"
    t.datetime "fecha"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "dentist_id"
    t.integer  "patient_id"
    t.integer  "diagnosis_id"
  end

  add_index "treatments", ["dentist_id"], name: "index_treatments_on_dentist_id"
  add_index "treatments", ["diagnosis_id"], name: "index_treatments_on_diagnosis_id"
  add_index "treatments", ["patient_id"], name: "index_treatments_on_patient_id"

end
