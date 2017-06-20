puts "What's your hamster's name?"
ham_name = gets.chomp

puts "What's your hamster's volumme level, on a scale of 1 to 10?"
ham_volume = gets.to_i

puts "What's your hamster's fur color?"
ham_fur_color = gets.chomp

puts "Is your hamster a good candidate for adoption?"
ham_adopt = gets.chomp

puts "How old do you think your hamster is? (Just answer with a number, please, or leave blank by pressing enter.)"
ham_age = gets.chomp

puts "Your hamster is named #{ham_name}!"
puts "Your hamster's volume level is #{ham_volume} out of 10!"
puts "Your hamster's fur color is #{ham_fur_color}!"
puts "Your hamster is a good candidate for adoption? #{ham_adopt}!"

  if ham_age == ""
      ham_age = nil
      puts "You're not sure of your hamster's age!"
  else
      puts "Your hamster is about #{ham_age.to_i} years old!"
  end