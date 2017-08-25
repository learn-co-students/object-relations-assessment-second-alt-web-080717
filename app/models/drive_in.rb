require 'pry'
class DriveIn

  attr_accessor :name

  def initialize(name)
    @name = "Happy's Sunset Drive-In"
  end

  def cars
    self.screens.collect do |screen|
      screen.cars
    end
  end

  def screens
    MovieScreen.all.select do |movie_screen|
      movie_screen.drive_in == self
    end
  end

  def full_house
    # returns true if all movie screens are at capacity
    capacities = self.screens.collect do |movie_screen|
      movie_screen.at_capacity
    end
    capacities.all? {|x| x == true}
  end

  def whats_playing
    playing_hash = {}
    self.screens.each do |movie_screen|
      playing_hash[movie_screen.movie] = {:available_seats => (movie_screen.capacity - movie_screen.cars.size)}
    end
    playing_hash
  end

  # #{
  #   "Spider Man" => {:available_seats => 12},
  #   "Cinderalla" => {:available_seats => 0}
  # }

end
