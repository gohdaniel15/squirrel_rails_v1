class Student < ApplicationRecord

  has_many :transactions, dependent: :destroy
  has_many :challenge_acceptances, dependent: :destroy
  has_many :challenges, through: :challenge_acceptances

  belongs_to :batch
end
