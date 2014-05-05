# U2.W5: Virus Predictor

# I worked on this challenge [myself]

# What this code is doing:
# Using the population size and population density for each state, this code is attempting to predict  
# the effect of a virus based on the amount of deaths it would cause as well as how fast it would spread.

# EXPLANATION OF require_relative
# the required relative is pointing to a 'relative' file that is being loaded to compliment the 
# current file. In this instance the realtive file: 'state_data' contains the information that is
# going to be manipulated to make predictions.
# 
# state_data: what is going on here?
# In the state_data file it it has a hash where the key is each state and the value are 
# nested hashes that use different syntax. For the newer hash syntax (key: value), as opposed
# to (key => value), typically your key will be a symbol.

require_relative 'state_data'

class VirusPredictor
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
#the virus_effects method is responisbile for returning the predicted_deaths and speed_of_spread methods within the VirusPredictor class.
  def virus_effects  #HINT: What is the SCOPE of instance variables? these methods can only be used within a virusPredictor class, its scope.
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #private methods can not be called with an explicit receiver, the receiver is always 'self'.
# the preducted_deaths method is responsible for taking the inputs of population_density, population and state and returning the estimated number of deaths
# that will be caused by an 'this' outbreak.
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# the speed_of_spread method is responisble for taking the inputs of populations_density and state to predict the amount of time it will
# take for the vrius to spread across each state 
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
 # 
STATE_DATA.each do |state, info|
  selected_state = VirusPredictor.new(state, info[:population_density], info[:population], info[:region], info[:regional_spread])
  selected_state.virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects
