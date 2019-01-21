class Result < ApplicationRecord
  belongs_to :user
  belongs_to :question
  
  def self.ranking
    self.group(:user_id).order('sum_score DESC').limit(10).sum(:score)
  end
end
