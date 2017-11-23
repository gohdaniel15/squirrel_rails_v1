class CreateChallengeAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :challenge_assignments do |t|
      t.belongs_to :challenge, index: true, foreign_key: true
      t.belongs_to :batch, index: :true, foreign_key: true
      t.timestamps
    end
  end
end
