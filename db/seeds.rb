# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding..."

# Authors
authors = Author.create ([{name: "John Kiarie"},{name: "Aisha Abdullah"},{name: "Moses Mwangi"}])

# Magazines
# title and category

magazines = Magazine.create([{title: "The New York Times", category: "News"},{title: "The Washington Post", category: "News"},{title: "GQ", category: "Sports"},{title: "Vogue", category: "Fashion"},{title: "The New Yorker", category: "News"}])

# Articles
# title, author_id, magazine_id

20.times do
    Article.create(title: Faker::Book.title, author_id: authors.sample.id, magazine_id: magazines.sample.id)
end

puts "Done!"
