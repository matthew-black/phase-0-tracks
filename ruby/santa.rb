#----RELEASE 6.3: ATTRIBUTES---#

  #--Creates and adds attributes to the Santa class--#
class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender

  def initialize(gender, ethnicity)
    # puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def about
    puts "  Age == #{@age}"
    puts "  Ethnicity == #{@ethnicity}"
    puts "  Gender == #{@gender}"
  end

  def set_random_age
    @age = rand(0..140)
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def speak
    puts "Ho, ho, ho! Happy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
  end
end
  # #--Test calls for Santa class instance methods--#
  #   steve = Santa.new("male", "Belgian")
  #   steve.speak
  #   steve.eat_milk_and_cookies("snickerdoodle")
  # #--Test calls for attribute-changing and getter/setter methods--#
  #   p betsy = Santa.new("female", "Icelandic")
  #   p betsy.celebrate_birthday
  #   p betsy.get_mad_at("Rudolph")
  #   p betsy.gender = "robot"
  #   p betsy.age
  #   p betsy.ethnicity


    #--Creates a specified number of random Santas--#
def santa_maker(number_of_santas)
  santa_factory = []
  possible_genders = ["Agender", "Female", "Bigender", "Male", "Robot", "Gender Fluid", "N/A"]
  possible_ethnicities = ["Black", "Latino", "White", "Japanese-African", "Prefer Not to Say", "Mystical Creature (Unicorn)", "N/A"]
  number_of_santas.times  {santa_factory << Santa.new(possible_genders.sample, possible_ethnicities.sample)}
  santa_factory
end
  # #--Test calls for santa_maker method, #set_random_age, and #about--#
    # santa_array = santa_maker(5)
    # santa_array.each { |santa_instance| santa_instance.set_random_age}
    # santa_array.size.times do |i|
    #   puts "Santa ##{i + 1}:"
    #   print "#{santa_array[i].about}"
    # end