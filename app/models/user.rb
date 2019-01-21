class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable
         
  validates_presence_of :name
         
  has_many :progressions, dependent: :destroy
  has_many :topics, through: :progressions, source: :topic
  has_many :results, dependent: :destroy
  has_many :questions, through: :results, source: :question
  
  def challenging?(topic)
    self.topics.include?(topic)
  end
  
  def following?(question)
    self.questions.include?(question)
  end
  
end
