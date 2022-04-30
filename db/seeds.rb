# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning up database'
Movie.destroy_all
puts 'database is clean'

url = 'https://api.themoviedb.org/3/movie/top_rated?api_key=bee3f4d040e52ad1c0e3eac80d78e941&language=en-US'
25.times do |m|
  movies = JSON.parse(URI.open("#{url}&page=#{m + 1}").read)['results']
  movies.each do |movie|
    puts "creating #{movie['title']}",
         base_poster_url = 'https://image.tmdb.org/t/p/original'
    Movie.create(
      title: movie['title'],
      overview: movie['overview'],
      poster_url: "#{base_poster_url}#{movie['poster_path']}",
      rating: movie['vote_average']
    )
  end
end
puts 'done'
