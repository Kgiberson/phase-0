# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Does not look for the absolute path.
#
require_relative 'state_data'


class VirusPredictor

# Initialize instance variables to be used thru out the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# To combine and invoke other 2 private instance methods.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# predicted_deaths uses population_density to determine the number_of_deaths predicted
  def predicted_deaths
    # predicted deaths is solely based on population density
   number_of_deaths = if @population_density >= 200
         (@population * 0.4).floor
    elsif @population_density >= 150
         (@population * 0.3).floor
    elsif @population_density >= 100
         (@population * 0.2).floor
    elsif @population_density >= 50
         (@population * 0.1).floor
    else
         (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# speed_of_spread checks the population_density and adds a speed depending on how large the number is, prints out a string with the calculated speed.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.


  speed = if @population_density >= 200
               0.5
          elsif @population_density >= 150
               1
          elsif @population_density >= 100
               1.5
          elsif @population_density >= 50
               2
          else
               2.5
          end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state



alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


STATE_DATA.each do |key, value|
  state = VirusPredictor.new(key, value[:population_density], value[:population])
  state.virus_effects
end

# Reflection
# What are the differences between the two different hash syntaxes shown in the state_data file?
#   The hashy hash uses a normal key => value representation while the nested hash uses a special symbol representation for the key.
# What does require_relative do? How is it different from require?
#   require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.
# What are some ways to iterate through a hash?
#   The each and map methods.
#   Hash.each do |key, value|
#     puts key
#     puts value
#   end
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   The variables were instance variables that didn't need to be identified as arguments since they're already accessible across methods.
# What concept did you most solidify in this challenge?
#   How and when to use the private method.