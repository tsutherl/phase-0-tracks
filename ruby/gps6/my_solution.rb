# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# allows us to use data or code form another document that is in the same folder as the file we are loading into.
class VirusPredictor
  # used to create a new instance of our class and let us set the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # call two methods but also provides those methods with the necessary arguments. Will return a string.   
  
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  # takes variables and predicts the number of deaths using population density instead of population - using conditional statements. Returns nil 
  def predicted_deaths
    # predicted deaths is solely based on population density
      multiplier = 0.4
      density = 200
      while density >= 50
        if @population_density >= density
          number_of_deaths = (@population * multiplier).floor
          return print "#{@state} will lose #{number_of_deaths} people in this outbreak"
        end
        multiplier -= 0.1
        density -= 50
      end
      
      number_of_deaths = (@population * 0.05).floor
      print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  
  

  # gives us the speed of the spread of the virus using conditional statements but returns nil  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.5
    density = 200
    until @population_density >= density
      speed += 0.5
      density -= 50
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
  
end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Creating a DRY driver code for calling each state

#state is setting the following information to a variable so we can run virus_effects on it later, so the name for this variable doesn't matter 
STATE_DATA.each do |name_of_state, population_info|
  state = VirusPredictor.new(name_of_state, 
    STATE_DATA[name_of_state][:population_density],  
    STATE_DATA[name_of_state][:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section
