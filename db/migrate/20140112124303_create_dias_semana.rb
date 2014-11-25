class CreateDiasSemana < ActiveRecord::Migration
  def change
    create_table :dias_semana do |t|
			t.string :dia, limit: 10
      t.timestamps
    end
  end
end
