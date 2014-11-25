class CreateProfessores < ActiveRecord::Migration
  def change
    create_table :professores do |t|
			t.string :matricula
			t.string :nome, limit: 80
			t.string :email
			t.integer :ch_semanal
      t.timestamps
    end
  end
end
