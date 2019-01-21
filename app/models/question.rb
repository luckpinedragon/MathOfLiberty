class Question < ApplicationRecord
  belongs_to :topic
  
  has_many :results, dependent: :destroy
  has_many :users, through: :results, source: :user
  has_many :answers, dependent: :destroy
  has_many :seekings, dependent: :destroy
  has_many :tags, through: :seekings, source: :tag
end
