# class Vehical

#   attr_accessor :total,:onRent,:bikeCount
#   @@bikeCount = 0
#   @@carCount = 0
#   @@vanCount = 0

#   def initialize(total,onRent)
#     @total = total
#     @onRent = onRent
#     puts "called"

#     if self.class==Car
#       @@carCount += 1
#     elsif self.class==Bike
#       @@bikeCount += 1
#     elsif self.class==Van
#       @@vanCount += 1
#     else
#       puts "Invalid Vehicle"
#     end
#   end
  
# end

class Bike
  @@rentPrice = 1000
  @@total = 15
  @@onRent = 0
  
  def addBike
    @@total += 1
  end

  def removeBike
    @@total -= 1
  end

  def giveToRent
    @@onRent += 1 
  end

  def getRentPrice
    return @@rentPrice
  end

  def getTotal
    return @@total
  end

  def getOnRent
    return @@onRent
  end

  def available
    return @@total - @@onRent
  end
end

class Van
  @@rentPrice = 1000
  @@total = 20
  @@onRent = 0
  
  def addVan
    @@total += 1
  end

  def removeVan
    @@total -= 1
  end

  def giveToRent
    @@onRent += 1 
  end

  def getRentPrice
    return @@rentPrice
  end

  def getTotal
    return @@total
  end

  def getOnRent
    return @@onRent
  end

  def available
    return @@total - @@onRent
  end
end

class Car
  @@rentPrice = 1000
  @@total = 30
  @@onRent = 0
  
  def addCar
    @@total += 1
  end

  def removeCar
    @@total -= 1
  end

  def giveToRent
    @@onRent += 1 
  end

  def getRentPrice
    return @@rentPrice
  end

  def getTotal
    return @@total
  end

  def getOnRent
    return @@onRent
  end

  def available
    return @@total - @@onRent
  end

end



def inventory
  puts "Total count of Vehicles : #{Bike.new.getTotal + Car.new.getTotal + Van.new.getTotal}"
  puts "Total Vehicles on rent: #{Bike.new.getOnRent + Car.new.getOnRent + Van.new.getOnRent}"
  puts "Total Vehicles available: #{Bike.new.available + Car.new.available + Van.new.available}"
end


def rent_out(type)
  if type == "Car" || type == "car"
    puts "#{type} price : #{Car.new.getTotal}"
  
  elsif type == "Bike" || type == "bike"
    puts "#{type} price : #{Bike.new.getTotal}"

  elsif type == "Van" || type == "van"
    puts "#{type} price : #{Van.new.getTotal}"

  else
    puts "#{type} not available"
  end
end

rent_out("car")
inventory



# bike = Bike.new
# car = Car.new
# van = Van.new

# puts bike.getTotal
# puts bike.available
# puts bike.giveToRent
# puts bike.available
# puts bike.getRentPrice

