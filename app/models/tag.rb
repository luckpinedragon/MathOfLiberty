class Tag < ApplicationRecord
  has_many :searchings, dependent: :destroy
  has_many :topics, through: :searchings, source: :topic
  has_many :seekings, dependent: :destroy
  has_many :questions, through: :seekings, source: :question
end
