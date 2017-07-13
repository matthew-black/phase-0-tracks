#--RELEASE 6.3: ATTRIBUTES--#

class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Happy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

  # #--Test calls--#
    # steve = Santa.new("male", "Belgian")
    # steve.speak
    # steve.eat_milk_and_cookies("snickerdoodle")

santas = []
def santa_maker(number_of_santas)

end

