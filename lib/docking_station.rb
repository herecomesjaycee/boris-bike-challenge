require_relative 'bike'

class DockingStation

attr_reader :bikes

	def initialize 
		@bikes = []
	end

  def release_bike
    raise 'No bikes available at this dock' if @bikes.empty?
    @bikes.pop
  end

  def docking(bike)
  raise 'station is full' if @bikes.count >=20
	@bikes << bike
  
  end
  
end


