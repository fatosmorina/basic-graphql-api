# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firsti)
#
project_titles = 12.times.map{ Faker::Book.title }

border = 0.5
offset = project_titles.length * border

users = {
  'erenyegar@email.com' => project_titles[0, offset],
  'leviackerman@gmail.com' => project_titles[offset..-1]
}

users.each do |email, projects|
  user = User.new(email: email, password: Faker::Internet.password, graph_token: SecureRandom.hex(8))
  projects.each{|title| user.projects.build(title: title)}
  user.save!
end

puts 'Database seeding was finished successfully'
