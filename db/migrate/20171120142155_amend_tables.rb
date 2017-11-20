class AmendTables < ActiveRecord::Migration[5.1]
  def change
    change_column_null :instructors, :name, false
    change_column_null :instructors, :email, false     
    change_column_null :students, :name, false
    change_column_null :students, :email, false 
    change_column_null :challenges, :title, false
    change_column_null :challenges, :description, false
    change_column_null :challenges, :score, false
    remove_column :transactions, :transaction_date, :date
    rename_column :transactions, :transaction_score, :score      
  end
end
