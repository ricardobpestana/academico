class CreateDisponibilidades < ActiveRecord::Migration
  def change
    create_table :disponibilidades do |t|
			t.integer :dia_id
			t.integer :hora_id
			t.integer :professor_id

      t.timestamps
    end
		add_index(:disponibilidades, :dia_id)
		add_index(:disponibilidades, :hora_id)
		add_index(:disponibilidades, :professor_id)
  end
end
