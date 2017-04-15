class Question < ApplicationRecord
  has_many :answers

  validates :description, :title, presence: true
  validates :title, length: { minimum: 40 }
  validates :description, length: { minimum: 150 }
end
