class CreateChallengeAcceptances < ActiveRecord::Migration[5.1]
  def change
    create_table :challenge_acceptances do |t|
      t.belongs_to :challenge, index: true, foreign_key: true
      t.belongs_to :student, index: :true, foreign_key: true
      t.integer :status, null: false
      t.timestamps
    end
  end
end
