Movie.destroy_all
Tag.destroy_all
MovieTag.destroy_all

20.times { Movie.create(title: Faker::Book.title) }
10.times { Tag.create(name: Faker::Book.genre) }

movies = Movie.all
tags = Tag.all

30.times { movies.sample.tags << tags.sample }
