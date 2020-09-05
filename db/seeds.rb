# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

40.times do 
  user_name = [*('A'..'Z')].shuffle[1] + [*(0..9)].shuffle[0..6].join
  s = rand(20)
  User.create(name: user_name, email: "#{user_name}@126.com", password: "123456", created_at: (Time.current - s.hours))
end

user_ids = User.pluck(:id)
40.times do |i|
  puts i
  title = "这是第#{i}篇博客文章"
  content = "这是第#{i}篇博客的内容"
  s = rand(10)
  Article.create(title: title, content: content * s, user_id: user_ids[s], created_at: (Time.current - s.hours))
end
