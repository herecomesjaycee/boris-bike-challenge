require_relative 'bike'

class DockingStation

attr_reader :bikes
DEFAULT_CAPACITY = 20

	def initialize 
		@bikes = []
	end

  def release_bike
    raise 'No bikes available at this dock' if empty?
    @bikes.pop
  end

  def docking(bike)
  raise 'station is full' if full?
	@bikes << bike
  

  end
  

 private 
 	def full?
 		@bikes.count >= DEFAULT_CAPACITY
 	end

 	def empty?
 		@bikes.empty?
 	end

end


