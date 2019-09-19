require_relative 'bike'

class DockingStation
  def initialize
    @docked_bikes = []
  end

  def release_bike
    fail 'No bikes available' if @docked_bikes.empty?
    @docked_bikes.pop
  end

  def dock_bike(bike)
   # We need to return the bike we dock
   # Use an instance variable to store the bike in the 'state' of this instance
   fail 'Docking station full' if @docked_bikes.count >= 20
   @docked_bikes << bike
  end


  # Use an attribute reader to read the @bike attribute we set
  attr_reader :docked_bikes


end
