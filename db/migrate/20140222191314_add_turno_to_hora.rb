class AddTurnoToHora < ActiveRecord::Migration
  def change
    add_column :horas, :turno, :string
  end
end
