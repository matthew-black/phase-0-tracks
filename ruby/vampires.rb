# Vampire Detection Program


# Gets input from user, converts it
# to booleans where necessary

puts "What is your name?"
  name = gets.chomp

puts "How old are you? (use digits)"
  age = gets.to_i

puts "What year were you born? (use digits)"
  birth_year = gets.to_i

puts "Do you want some garlic bread? (yes or no)"
  garlic_answer = gets.chomp
    if garlic_answer == "yes"
      like_garlic = true
    else
      like_garlic = false
    end

puts "Do you want to enroll in our health insurance program? (yes or no)"
  health_insurance_answer = gets.chomp
    if health_insurance_answer == "yes"
      wants_insurance = true
    else
      wants_insurance = false
    end


# Runs input through some conditional logic
# to try to deduce if user is a vampire


