require 'rails_helper'

RSpec.describe "In the studio index page" do
  it "shows a list of all movie studios and i see a list of all movies" do
    studio1 = Studio.create(name: "Awesome", location: "Evergreen")
    movie_1 = studio1.movies.create(title: "Afflec", creation_year: 2007, genre: "Action")
    movie_1.actors.create(name: "Ben Afflec", age: 32)
    
    visit "/studios"
    expect(page).to have_content("")
  end
end
