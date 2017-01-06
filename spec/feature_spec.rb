require_relative '../lib/docking_station.rb'

station = DockingStation.new
bike = Bike.new

station.docking(bike)
station.release_bike

20.times {station.docking(bike)}
