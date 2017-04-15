class Answer < ApplicationRecord
  belongs_to :question
  validates :question, presence: true
  validates :body, length: { minimum: 50 }, presence: true
end
