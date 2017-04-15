# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
question_attributes = [
  { title: 'Who is the best character in Saga?', description: 'Analysis of the best character in Saga'  },
  { title: 'What happened in the Battle of Endor?', description: 'Discuss the parties involved and the reason of the conflict'}
]

question_attributes.each do |attributes|
  question = Question.new(attributes)
  question.save
end
