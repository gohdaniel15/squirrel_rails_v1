class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :name, :string
  end

  def up
    drop_table :instructors
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
