class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
    	t.integer :score, null: false
      t.belongs_to :student, index: :true, foreign_key: true
      t.belongs_to :challenge, index: :true, foreign_key: true
      t.timestamps
    end
  end
end
