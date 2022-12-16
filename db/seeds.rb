# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

22.times do 
    @comics = Comic.new(
        hero: Faker::DcComics.hero,
        heroine: Faker::DcComics.heroine,
        villain: Faker::DcComics.villain,
        name: Faker::DcComics.name,
        title: Faker::DcComics.title
    )

    @comics.save
end
