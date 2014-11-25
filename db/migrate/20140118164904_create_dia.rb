class CreateDia < ActiveRecord::Migration
  def change
    create_table :dias do |t|
			t.string :dia, limit: 10
      t.timestamps
    end
  end
end
