class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
			t.string :nome, limit: 80
      t.timestamps
    end
  end
end
