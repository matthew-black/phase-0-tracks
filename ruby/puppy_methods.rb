# Class creation:

class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(integer)
    woof_count = 0
    until woof_count == integer
      puts "Woof!"
      woof_count += 1
    end
  end
  def roll_over
    puts "*roll over*"
  end
  def dog_years (integer)
    p integer * 7
  end
  def sit
    puts "*sit*"
  end
  def initialize
    # puts "Initializing new puppy instance"
  end
end

class Squirrel
  def climb_tree
    puts "*climbs tree*"
  end
  def hide_acorn(integer)
    acorn_count = 0
    until acorn_count == integer
      puts "Hide acorn"
      acorn_count += 1
    end
  end
  def initialize
    # puts "Initializing squirrel instance"
  end
end


# Driver Code:

  # Puppy class stuff:
maggie = Puppy.new
maggie.fetch("ball")
maggie.speak(5)
maggie.roll_over
maggie.dog_years(2)
maggie.sit

  # Squirrel class stuff:

squirrel_home = []
50.times do
  squirrel_home << Squirrel.new
end

squirrel_home.each do |squirrel|
  squirrel.climb_tree
  squirrel.hide_acorn(2)
end