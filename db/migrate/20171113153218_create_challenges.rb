class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
    	t.string :title, null: false
    	t.string :description, null: false
    	t.integer :score, null: false
      t.timestamps
    end
  end
end
