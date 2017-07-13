##--6.4: MODULES--##

  #--Release 1, commented out--#
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# puts Shout.yell_angrily("You ate all the cookies")
# puts Shout.yell_happily("Thanks for leaving a cookie for me C")

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " >.<"
  end

  def yell_happily(words)
    puts words + "!!!" + " :)"
  end
end

class Neighbor
  include Shout
end

class GenerousFriend
  include Shout
end

grumpy_fred = Neighbor.new
kind_leslie = GenerousFriend.new

grumpy_fred.yell_angrily("Get off my lawn")
kind_leslie.yell_happily("I found a $50 bill! You can have it")