class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
    	t.string :track, null: false
    	t.string :serial_number, null: false
    	t.date :start_date, null: false
    	t.date :end_date, null: false
      t.timestamps
    end
  end
end
