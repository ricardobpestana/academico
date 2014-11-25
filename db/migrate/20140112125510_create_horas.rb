class CreateHoras < ActiveRecord::Migration
  def change
    create_table :horas do |t|
			t.string :hora, limit: 5
      t.timestamps
    end
  end
end
