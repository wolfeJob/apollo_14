require 'rails_helper'

RSpec.describe "Astronaut Index Page" do
  it "can list all astronauts" do
    astro_1 = Astronaut.create(name: "Scotty", age: 26, job:"Second in command")
    astro_2 = Astronaut.create(name: "Mary", age: 26, job:"First in command" )

    visit '/astronauts'
    expect(page).to have_content("Name: #{astro_1.name}")
    expect(page).to have_content("Age: #{astro_1.age}")
    expect(page).to have_content("Job: #{astro_1.job}")
    expect(page).to have_content("Name: #{astro_1.name}")
    expect(page).to have_content("Age: #{astro_1.age}")
    expect(page).to have_content("Job: #{astro_1.job}")
  end

  it "can see the average age of all astronauts" do
    astro_1 = Astronaut.create(name: "Scotty", age: 26, job:"Second in command")
    astro_2 = Astronaut.create(name: "Mary", age: 26, job:"First in command" )

    visit '/astronauts'

    expect(page).to have_content("Average Age: 26")
  end

  it "can see a list of missions for each astronaut" do
  astro_1 = Astronaut.create(name: "Scotty", age: 26, job:"Second in command")
  astro_2 = Astronaut.create(name: "Mary", age: 26, job:"First in command" )
  mission_1 = astro_1.missions.create(title: "Apollo", time_in_space: 5)
  mission_2 = astro_1.missions.create(title: "Capricorn", time_in_space: 6)
  mission_3 = astro_2.missions.create(title: "Gemini", time_in_space: 7)
  mission_4 = astro_2.missions.create(title: "Scorpio", time_in_space: 4)


  visit '/astronauts'

  expect(page).to have_content("Missions: #{mission_1}")
  expect(page).to have_content("Missions: #{mission_2}")
  expect(page).to have_content("Missions: #{mission_3}")
  expect(page).to have_content("Missions: #{mission_4}")
  end


end
