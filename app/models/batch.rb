class Batch < ApplicationRecord

  has_many :students, dependent: :destroy
  has_many :challenge_assigments, dependent: :destroy
  has_many :challenges, through: :challenge_assigments

end
