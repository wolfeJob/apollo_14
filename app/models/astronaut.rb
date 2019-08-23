class Astronaut < ApplicationRecord
  has_many :astronaut_missions
  has_many :missions, through: :astronaut_missions
  validates_presence_of :name, :age, :job


 def average_age
   astronauts.average(:age)
 end
end
