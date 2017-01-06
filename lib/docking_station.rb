require_relative 'bike'

class DockingStation
<<<<<<< HEAD

 attr_reader :bike


def release_bike
	Bike.new
end

def dock(bike)
@bike = bike
end

#def bike
#@bike
#end

end

=======
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
>>>>>>> 9ba8a3fde1476fb8f0d4cadd702ab6e2bf70656b
