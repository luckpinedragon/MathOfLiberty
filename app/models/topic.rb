class Topic < ApplicationRecord
  has_many :progressions, dependent: :destroy
  has_many :users, through: :progressions, source: :user
  has_many :questions, dependent: :destroy
  has_many :searchings, dependent: :destroy
  has_many :tags, through: :searchings, source: :tag
end
