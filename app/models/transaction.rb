class Transaction < ApplicationRecord

  belongs_to :student
  belongs_to :challenge

end
