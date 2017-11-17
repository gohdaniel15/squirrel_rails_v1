class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
    	t.string :track
    	t.string :serial_number
    	t.date :start_date
    	t.date :end_date
      t.timestamps
    end
  end
end
