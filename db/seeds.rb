# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Astronaut.destroy_all
Mission.destroy_all
astro_1 = Astronaut.create(name: "Scotty", age: 26, job:"Second in command")
astro_2 = Astronaut.create(name: "Mary", age: 26, job:"First in command" )
mission_1 = astro_1.missions.create(title: "Apollo", time_in_space: 5)
mission_2 = astro_1.missions.create(title: "Capricorn", time_in_space: 6)
mission_3 = astro_2.missions.create(title: "Gemini", time_in_space: 7)
mission_4 = astro_2.missions.create(title: "Scorpio", time_in_space: 4)
