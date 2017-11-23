class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
    	t.string :name, null: false
    	t.string :email, null: false
    	t.belongs_to :batch, index: true, foreign_key: true
      t.timestamps
    end
  end
end
