require 'rails_helper'

RSpec.describe "In the movie show page" do
  it "shows the title, creation year, and genre, and a list of all actors from youngest to oldest" do
    studio1 = Studio.create(name: "Awesome", location: "Evergreen")
    movie_1 = studio1.movies.create(title: "Afflec", creation_year: 2007, genre: "Action")
    actor1 = movie_1.actors.create(name: "Ben Afflec", age: 32)
    actor2 = movie_1.actors.create(name: "Abby", age: 28)

    visit "/movies/#{movie_1.id}"
    first = "Abby"
    second = "Ben Afflec"
    expect(first). to appear_before(second)
    expect(page).to have_content("#{movie_1.title}")
    expect(page).to have_content("#{movie_1.creation_year}")
    expect(page).to have_content("#{movie_1.genre}")
    expect(page).to have_content("#{actor1.name}")
    expect(page).to have_content("#{actor2.name}")
    expect(page).to have_content("#{actor1.age}")
    expect(page).to have_content("#{actor2.age}")
    expect(page).to have_content(30.0)
  end
  it "shows a form for an actors name to add to the movie" do
    studio1 = Studio.create(name: "Awesome", location: "Evergreen")
    movie_1 = studio1.movies.create(title: "Afflec", creation_year: 2007, genre: "Action")
    movie_2 = studio1.movies.create(title: "title", creation_year: 2000, genre: "blah")
    actor1 = movie_1.actors.create(name: "Ben Afflec", age: 32)
    actor2 = movie_2.actors.create(name: "Abby", age: 28)

    visit("/movies/#{movie_1.id}")
    has_field?("name")
    fill_in :name, with: "Abby"
    click_on("Add Actor")
    expect(current_path).to eq("/movies/#{movie_1.id}")
    expect(page).to have_content("#{actor2.name}")
  end
end
