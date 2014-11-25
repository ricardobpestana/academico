class CreatePreferencias < ActiveRecord::Migration
  def change
    create_table :preferencias do |t|
			t.integer :disciplina_id
			t.integer :professor_id
			t.integer :ano
			t.integer :semestre
      t.timestamps
    end
		add_index(:preferencias, :disciplina_id)
		add_index(:preferencias, :professor_id)
  end
end
