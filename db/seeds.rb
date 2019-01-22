# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

(1..5).each do |number|
  Topic.create(title: 'title' + number.to_s, content: '<div>test content</div> ' + number.to_s, genre: 1, chapter: number, interpretation: 'movie' + number.to_s)
end

(6..10).each do |number|
  Topic.create(title: 'title' + number.to_s, content: '<div>test content</div> ' + number.to_s, genre: 2, chapter: number, interpretation: 'movie' + number.to_s)
end

(11..15).each do |number|
  Topic.create(title: 'title' + number.to_s, content: '<div>test content</div> ' + number.to_s, genre: 3, chapter: number, interpretation: 'movie' + number.to_s)
end

(16..20).each do |number|
  Topic.create(title: 'title' + number.to_s, content: '<div>test content</div> ' + number.to_s, genre: 4, chapter: number, interpretation: 'movie' + number.to_s)
end

(1..20).each do |number|
  Question.create(topic_id: number, theme: 'theme' + number.to_s, problem: '<div>test problem</div> ' + number.to_s, level: 1, explanation: 'video' + number.to_s)
end

(1..20).each do |number|
  Question.create(topic_id: number, theme: 'theme' + number.to_s, problem: '<div>test problem</div> ' + number.to_s, level: 2, explanation: 'video' + number.to_s)
end

(1..20).each do |number|
  Question.create(topic_id: number, theme: 'theme' + number.to_s, problem: '<div>test problem</div> ' + number.to_s, level: 3, explanation: 'video' + number.to_s)
end

(1..20).each do |number|
  Answer.create(question_id: number, section: 1, distribution: 100)
end

(21..40).each do |number|
  Answer.create(question_id: number, section: 1, distribution: 40)
end

(21..40).each do |number|
  Answer.create(question_id: number, section: 2, distribution: 60)
end

(41..60).each do |number|
  Answer.create(question_id: number, section: 1, distribution: 20)
end

(41..60).each do |number|
  Answer.create(question_id: number, section: 2, distribution: 30)
end

(41..60).each do |number|
  Answer.create(question_id: number, section: 3, distribution: 50)
end

(1..20).each do |number|
  Solution.create(answer_id: number, box: 1, value: 1)
end

(21..60).each do |number|
  Solution.create(answer_id: number, box: 1, value: 2)
end

(21..60).each do |number|
  Solution.create(answer_id: number, box: 2, value: 2)
end

(61..120).each do |number|
  Solution.create(answer_id: number, box: 1, value: 3)
end

(61..120).each do |number|
  Solution.create(answer_id: number, box: 2, value: 3)
end

(61..120).each do |number|
  Solution.create(answer_id: number, box: 3, value: 3)
end

(1..10).each do |number|
  Tag.create(item: 'item' + number.to_s)
end

(1..10).each do |number|
  Searching.create(tag_id: number, topic_id: number)
  Searching.create(tag_id: number, topic_id: number + 10)
end

(1..10).each do |number|
  Seeking.create(tag_id: number, question_id: number)
  Seeking.create(tag_id: number, question_id: number + 10)
  Seeking.create(tag_id: number, question_id: number + 20)
  Seeking.create(tag_id: number, question_id: number + 30)
  Seeking.create(tag_id: number, question_id: number + 40)
  Seeking.create(tag_id: number, question_id: number + 50)
end
