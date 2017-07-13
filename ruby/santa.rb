#----RELEASE 6.3: ATTRIBUTES---#

  #--Creates the Santa class--#
class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def speak
    puts "Ho, ho, ho! Happy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
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
      # betsy = Santa.new("female", "Icelandic")
      # p betsy.celebrate_birthday
      # p betsy.get_mad_at("Rudolph")
      # p betsy.gender = "female"
      # p betsy.age
      # p betsy.ethnicity


    #--Creates a specified number of random Santas--#
def santa_maker(number_of_santas)
  santa_factory = []
  possible_genders = ["agender", "female", "bigender", "male", "quite mysterious", "gender fluid", "N/A"]
  possible_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
  number_of_santas.times  {santa_factory << Santa.new(possible_genders[rand(0..6)], possible_ethnicities[rand(0..6)])}
  santa_factory
end
  # #--Test calls for santa_maker method--#
  #   santas = santa_maker(3)
  #   p santas





