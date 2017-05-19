100.times do
  title             = Faker::Book.title
  author            = Faker::Book.author
  genre             = Faker::Book.genre
  publication_date  = Faker::Date.between(100.years.ago, 10.years.ago)
  summary           = Faker::Hipster.paragraph(2)

  Book.create!(title: title, author: author, genre: genre, pub_date: publication_date, summary: summary)
end