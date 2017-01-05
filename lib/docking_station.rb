require_relative 'bike'

class DockingStation

  def release_bike
    raise 'No bikes available at this dock' if @bike == 1

    Bike.new
  end

  def docking(bike)
    @bike = bike
  end
attr_reader :bike
end
