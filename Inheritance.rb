class Vehicle
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
  
    def start_engine
      puts "#{name}'s engine started."
    end
  end
  
  class Car < Vehicle
    def start_engine
      super
      puts "The car's engine is running smoothly."
    end
  end
  
  class Bicycle < Vehicle
    def start_engine
      puts "A bicycle doesn't have an engine."
    end
  end
  
  my_car = Car.new("Toyota")
  my_bicycle = Bicycle.new("Mountain Bike")
  
  my_car.start_engine
  my_bicycle.start_engine
  