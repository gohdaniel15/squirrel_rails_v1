class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
    	t.date :transaction_date
    	t.integer :transaction_score
      t.belongs_to :student ,index: :true
      t.belongs_to :challenge, index: :true
      t.timestamps
    end
  end
end
