class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
			t.string :tipo
			t.string :nome, limit: 80
			t.integer :qtd_periodos
			t.integer :ch_total

      t.timestamps
    end
  end
end
