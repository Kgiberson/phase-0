# Create a Car Class from User Stories

# I worked on this challenge [by myself, with: ].


# 2. Pseudocode

# 1) As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.
# 1) Create a car class. Initialized with model and color.

# 2) As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
# 2) Create class, DeliverPizza. Initialize with distance.

# 3) As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
# 3) Add speed attribute to car class.

# 4) As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
# 4) Set default to straight, create left & right methods that use @direction as an attribute

# 5) As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
# 5) create 2 speed methods (decelerate, accelerate) that change your speed

# 6) As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
# 6) Delivered method ends delivery, when delivery is over, add to total-miles attribute inside Car class.

# 7) As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
# 7) Create stop method in Car class, speed set to zero.

# 8) As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
# 8) Create latest action method that changes as each other method is called to be whatever that called method is

# 3. Initial Solution

class Car

  attr_accessor :model, :color, :speed, :direction, :total_distance, :latest_action, :pizza

  def initialize(model, color, speed=0, direction="straight", total_distance=0, latest_action = nil, pizza = 0)
    @model = model
    @color = color
    @speed = speed
    @direction = direction
    @total_distance = total_distance
    @latest_action = latest_action
    @pizza = pizza
  end

  def latest_action
    @latest_action
  end

  def left
    @latest_action = 'turned left'
    @direction = 'left'
  end

  def right
    @latest_action = 'turned right'
    @direction = 'right'
  end

  def straight
    @latest_action = 'went straight'
    @direction = 'straight'
  end

  def decelerate(num)
    @latest_action = 'decelerated'
    @speed = num
  end

  def accelerate(num)
    @latest_action = 'accelerated'
    @speed = num
  end

  def stop
    @latest_action = 'stopped'
    @speed = 0
  end

end

class Deliver_pizza

  attr_accessor :distance, :num

  def initialize(distance,num=1)
    @distance = distance
    @num = num
  end

  def delivery_boy(car)
    car.pizza += @num
  end

  def endDelivery(car)
    p 'Pizza delivered!'
    car.total_distance += @distance
  end

end


class Pizza

  attr_accessor :crust, :size, :toppings, :raw

  def initialize(crust, size, toppings, raw = "yes")
    @crust = crust
    @size = size
    @toppings = toppings
    @raw = raw
  end

  def cook
    @raw = "no"
  end


end

my_pizza = Pizza.new("thin","large",["sausage","pepperoni"])
p my_pizza.toppings
p my_pizza.cook

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

# Make sure your code works as anticipated by writing code that will do the following:

# Create a new car of your desired model and type
# Drive .25 miles (speed limit is 25 mph)
# At the stop sign, turn right
# Drive 1.5 miles (speed limit is 35 mph)
# At the school zone, check your speed
# Slow down to speed limit 15 mph
# Drive .25 miles more miles
# At the stop sign, turn left
# Drive 1.4 miles (speed limit is 35 mph)
# Stop at your destination
# Log your total distance travelled


my_car = Car.new("RAV4", "white")
delivery1 = Deliver_pizza.new(15)
delivery1.delivery_boy(my_car)
my_car.speed = 25
my_car.total_distance += 0.25
my_car.right
my_car.total_distance += 1.5
my_car.speed = 35
my_car.speed
my_car.decelerate(15)
my_car.total_distance += 0.25
my_car.left
my_car.speed = 35
my_car.total_distance += 1.4
my_car.stop
p my_car.total_distance
p my_car.pizza






# 5. Reflection
# What concepts did you review in this challenge?
  # How to create a Ruby class.
# What is still confusing to you about Ruby?
  # How to compose a well rounded 'game'.
# What are you going to study to get more prepared for Phase 1?
  # I'm hoping to work through all the Ruby challenges.