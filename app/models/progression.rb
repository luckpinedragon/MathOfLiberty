class Progression < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  
  def self.marking
    self.group(:user_id).order('count_complete DESC').limit(10).where(complete: 4).count(:complete)
  end
end
