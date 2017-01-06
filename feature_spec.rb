require 'docking_station'

station = DockingStation.new
bike = Bike.new

station.release_bike

20.times {station.docking(bike)}

