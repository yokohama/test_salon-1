# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |n|
  Category.create!(
    name: "Category#{n + 1}",
  )
end

5.times do |n|
  Member.create!(
    email: "test#{n + 1}@test.com",
    nickname: "テスト#{n + 1}",
    password: 'password'
  )
end

5.times do |n|
  Member.create!(
    email: "sample#{n + 1}@sample.com",
    nickname: "sample#{n + 1}",
    password: 'password'
  )
end
