require_relative 'bike'

class DockingStation
  def release_bike
    raise 'No bikes available at this dock' if @bike == 0

    Bike.new
  end

  def docking(bike)

  raise 'station is full' if @bike

    @bike = bike
  end
attr_reader :bike
end
