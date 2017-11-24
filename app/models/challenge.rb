class Challenge < ApplicationRecord

  has_many :challenge_acceptances, dependent: :destroy
  has_many :students, through: :challenge_acceptances
  has_many :challenge_assignments, dependent: :destroy
  has_many :batchs, through: :challenge_assignments

  validates :score, presence: true,
                    numericality: {
                      only_integer: true,
                      greater_than_or_equal_to: 1,
                      less_than_or_equal_to: 10
                    }
  validates :title, presence: true
  validates :description, presence: true

end
