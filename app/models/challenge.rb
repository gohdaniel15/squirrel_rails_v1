class Challenge < ApplicationRecord
	validates_presence_of :title, :description, :score
	 validates :score, numericality: { only_integer: true, less_than: 11, greater_than: 0} 

	has_many :challenge_acceptances
	has_many :students, through: :challenge_acceptances
	has_many :challenge_assignments
	has_many :batchs, through: :challenge_assignments
end
