# Virus Predictor

# I worked on this challenge [with: Marla Kallstrom and Davina].
# We spent [1.2] hours on this challenge.

# EXPLANATION OF require_relative
#--It is used to link a file that is in the same folder
#--as the current file. You can also link files using relative
#--folder paths, ie. ../folder/hungry_hippos.rb
require_relative 'state_data'

class VirusPredictor

    #--setting instance variables for each new class instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

    #--literally just calling predicted_deaths and speed_of_spread,
    #--probz just to simplify the driver code
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private #--makes the below methods on available to class methods
          #--controls/limits the scope

    #--calculates how many people are gonna die, based on
    #--the total population multiplied by a population density
    #--variable
  def predicted_deaths
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

    #--based on population density, this method just states, in months,
    #--how long it will take for the disease to spread
  def speed_of_spread #in months
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE

  #--iterate through the STATE_STATE constant, using the virus_effects
  #--method to print the depressing casualty outlook for each of the 50 states
STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state, value[:population_density], value[:population])
  state.virus_effects
end

  #--just leaving this here as an example of how the program would print
  #--virus data for a state before we instituted a more DRY method
    # alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
    # alabama.virus_effects

#=======================================================================
# Reflection Section
#
# --- The two hash syntaxes in the STATE_DATA file are functionally the same,
# ------ but it makes the data structure more readable, almost like a table,
# ------ to use the "block" format for the big hash, and then the "line" format
# ------ for the 50 hashes contained by the block.
#
# --- require_relative lets you require a file by using a relative file path,
# ------ while require only lets you load a file if its part of the current
# ------ file's load path.
#
# --- #each is the method that is used to iterate through a hash. You can also
# ------ get more specific by using #each_key or #each_value if you only
# ------ wanted to return keys or values. #each_pair is also a thing, but it
# ------ seems functionally identical to #each...maybe I'm missing something...
#
# --- Well, at first the only thing that stood out to us as totally bonkers
# ------ was the "speed = 0" and "speed << integer_here" thing. Eventually we
# ------ realized that the two methods inside virus_effects didn't need to have
# ------ any arguments passed in since they were working with variables that
# ------ would be filled when a new VirusPredictor class instance is generated
#
# --- Davina made it a priority for us to have very rigid driver/navigator roles
# ------ for this challenge. My preference is to have the roles be a little more
# ------ fluid; in my previous pairings, it seems like the ones that have gone the
# ------ best have had the "fluid roles" thing in common, but after being the
# ------ driver and not being allowed to look at the GPS 3.1 module on Canvas, I
# ------ have a new understanding of how adhering strictly to these roles can be
# ------ productive. I'll still prefer more fluidity going forward, but really
# ------ committing to driver/navigator basically guarantees that the session is
# ------ going to be efficient. It's an excellent Plan B if the natural connection
# ------ plus teamwork thing I prefer doesn't seem to be developing.
# --- As far as technical stuff, though, this really solidified my understanding of
# ------ how to work with hashes. That is something I need to continue to play with.
# ------ It seems like it's going to be a really common thing to create and maintain,
# ------ so I feel extra motivated to master it so it feels like a very simple thing.
