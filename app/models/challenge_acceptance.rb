class ChallengeAcceptance < ApplicationRecord
	belongs_to :challenge 
	belongs_to :student
end
