require_relative 'bike'

class DockingStation

	attr_accessor :bikes

	DEFAULT_CAPACITY = 20
	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def release_bike
	  raise 'No bikes available at this dock' if empty?
	  raise 'No working bikes' if working_bikes?
	  released_bike = working_bikes.pop
	  @bikes.delete(released_bike)
	  released_bike
	end

	def docking(bike)
		raise 'station is full' if full?
		@bikes << bike
	end

	def report(bike)
		bike.working = false
		bike
	end

	def broken_bikes
		broke_bikes = @bikes.reject!{|bike| !bike.working?}
		@bikes.delete(broke_bikes)
		broke_bikes
	end

	private
	def working_bikes
		@bikes.select{|bike| bike.working?}
	end

	def full?
		@bikes.count >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.empty?
	end

	def working_bikes?
		 working_bikes.empty?
	end
end
