class CreateChallengeAcceptances < ActiveRecord::Migration[5.1]
  def change
    create_table :challenge_acceptances do |t|
      t.belongs_to :challenge ,index: true
      t.belongs_to :student, index: :true
      t.string :status
      t.timestamps
    end
  end
end
