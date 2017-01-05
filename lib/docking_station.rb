require_relative 'bike'

class DockingStation

  def release_bike
    Bike.new
  end

  def docking(bike)
    @bike = bike
  end
attr_reader :bike
end
