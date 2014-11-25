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

ActiveRecord::Schema.define(:version => 20140322011830) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "aulas", :force => true do |t|
    t.string   "dia"
    t.string   "hora"
    t.string   "professor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cursos", :force => true do |t|
    t.string   "tipo"
    t.string   "nome",         :limit => 80
    t.integer  "qtd_periodos"
    t.integer  "ch_total"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "dias", :force => true do |t|
    t.string   "dia",        :limit => 10
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "dias_semana", :force => true do |t|
    t.string   "dia",        :limit => 10
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "disciplinas", :force => true do |t|
    t.string   "nome",       :limit => 80
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "sigla"
  end

  create_table "disponibilidades", :force => true do |t|
    t.integer  "dia_id"
    t.integer  "hora_id"
    t.integer  "professor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "disponibilidades", ["dia_id"], :name => "index_disponibilidades_on_dia_id"
  add_index "disponibilidades", ["hora_id"], :name => "index_disponibilidades_on_hora_id"
  add_index "disponibilidades", ["professor_id"], :name => "index_disponibilidades_on_professor_id"

  create_table "horarios", :force => true do |t|
    t.integer  "dia_id"
    t.integer  "disciplina_id"
    t.integer  "hora_id"
    t.integer  "professor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "periodo"
  end

  add_index "horarios", ["dia_id"], :name => "index_horarios_on_dia_id"
  add_index "horarios", ["disciplina_id"], :name => "index_horarios_on_disciplina_id"
  add_index "horarios", ["hora_id"], :name => "index_horarios_on_hora_id"
  add_index "horarios", ["professor_id"], :name => "index_horarios_on_professor_id"

  create_table "horas", :force => true do |t|
    t.string   "hora",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "turno"
  end

  create_table "matrizes", :force => true do |t|
    t.integer  "curso_id"
    t.integer  "disciplina_id"
    t.integer  "periodo"
    t.integer  "qtd_aulas_semana"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "matrizes", ["curso_id"], :name => "index_matrizes_on_curso_id"
  add_index "matrizes", ["disciplina_id"], :name => "index_matrizes_on_disciplina_id"

  create_table "preferencias", :force => true do |t|
    t.integer  "disciplina_id"
    t.integer  "professor_id"
    t.integer  "ano"
    t.integer  "semestre"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "preferencias", ["disciplina_id"], :name => "index_preferencias_on_disciplina_id"
  add_index "preferencias", ["professor_id"], :name => "index_preferencias_on_professor_id"

  create_table "professores", :force => true do |t|
    t.string   "matricula"
    t.string   "nome",                   :limit => 80
    t.string   "email"
    t.integer  "ch_semanal"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.date     "data_adm"
    t.string   "encrypted_password",                   :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "professores", ["email"], :name => "index_professores_on_email", :unique => true
  add_index "professores", ["reset_password_token"], :name => "index_professores_on_reset_password_token", :unique => true

  create_table "turmas", :force => true do |t|
    t.integer  "curso_id"
    t.integer  "periodo"
    t.string   "turno"
    t.integer  "qtd_alunos"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
