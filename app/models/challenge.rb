class Challenge < ApplicationRecord
	has_many :challenge_acceptances
	has_many :students, through: :challenge_acceptances
	has_many :challenge_assignments
	has_many :batchs, through: :challenge_assignments
end
