class Student < ApplicationRecord

  has_many :transactions, dependent: :destroy
  has_many :challenges, through: :transactions
  belongs_to :batch
  has_many :chllenge_acceptances, dependent: :destroy
  has_many :challenges, through: :chllenge_acceptances

end
