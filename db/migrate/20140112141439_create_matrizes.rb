class CreateMatrizes < ActiveRecord::Migration
  def change
    create_table :matrizes do |t|
			t.integer :curso_id
			t.integer :disciplina_id
			t.integer :periodo
			t.integer :qtd_aulas_semana
      t.timestamps
    end
		add_index(:matrizes, :curso_id)
		add_index(:matrizes, :disciplina_id)
  end
end
