class AddPeriodoToHorarios < ActiveRecord::Migration
  def change
    add_column :horarios, :periodo, :string
  end
end
