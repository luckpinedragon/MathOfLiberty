class Answer < ApplicationRecord
  belongs_to :question
  
  has_many :solutions, dependent: :destroy
end
