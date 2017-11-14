class Student < ApplicationRecord
	has_many :transactions
	has_many :challenges, through: :transactions
	belongs_to :batch
	has_many :chllenge_acceptances
	has_many :challenges, through: :chllenge_acceptances
end
