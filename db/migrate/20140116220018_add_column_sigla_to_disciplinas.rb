class AddColumnSiglaToDisciplinas < ActiveRecord::Migration
  def change
    add_column :disciplinas, :sigla, :string
  end
end
