##--6.4: MODULES--##

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end

puts Shout.yell_angrily("You ate all the cookies")
puts Shout.yell_happily("Thanks for leaving a cookie for me")