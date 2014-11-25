class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
			t.integer :dia_id
			t.integer :disciplina_id
			t.integer :hora_id
			t.integer :professor_id

      t.timestamps
    end
		add_index(:horarios, :dia_id)
		add_index(:horarios, :disciplina_id)
		add_index(:horarios, :hora_id)
		add_index(:horarios, :professor_id)
  end
end
