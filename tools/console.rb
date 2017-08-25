require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
sunset = DriveIn.new("name")


moviescreen1 = MovieScreen.new("Departed", 120, sunset)
moviescreen2 = MovieScreen.new("Little Mermaid", 110, sunset)

car1 = Car.new("Car1", moviescreen1)
car2 = Car.new("Car2", moviescreen1)
car3 = Car.new("Car3", moviescreen1)



Pry.start
