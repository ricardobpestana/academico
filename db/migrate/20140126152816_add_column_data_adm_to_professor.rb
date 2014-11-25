class AddColumnDataAdmToProfessor < ActiveRecord::Migration
  def change
    add_column :professores, :data_adm, :date
  end
end
