require_relative 'bike'

class DockingStation

	attr_reader :bikes
	DEFAULT_CAPACITY = 20
	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def release_bike
	  raise 'No bikes available at this dock' if empty?
	  raise 'No working bikes' if working_bikes?
	  @bikes.pop
	end

	def docking(bike)
		raise 'station is full' if full?
		@bikes << bike
	end

	def report(bike)
		bike.working = false
		bike
	end

	private
	def full?
		@bikes.count >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.empty?
	end

	def working_bikes?
		 @bikes.select{ |bike| bike.working?}.empty?
	end
end
