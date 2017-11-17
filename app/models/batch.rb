class Batch < ApplicationRecord
	has_many :students
	has_many :challenge_assigments
	has_many :challenges, through: :challenge_assigments
end
