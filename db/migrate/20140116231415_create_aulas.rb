class CreateAulas < ActiveRecord::Migration
  def change
    create_table :aulas do |t|
      t.string :dia
      t.string :hora
      t.string :professor

      t.timestamps
    end
  end
end
