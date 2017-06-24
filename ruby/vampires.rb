# Vampire Detection Program


# Gets input from user, converts string response
#   immediately to booleans where necessary
puts "How many prospective employees will be processed?"
  number_of_employees = gets.to_i

count = 0
while number_of_employees > count
  puts "What is your name?"
    name_is = gets.chomp

  puts "How old are you? (use digits)"
    age = gets.to_i

  puts "What year were you born? (use digits)"
    birth_year = gets.to_i

  # Evaluates age and birth_year to see if accurate.
  #   (Used a range of numbers because being born in 2007 would
  #       mean that a person could be 9 OR 10 in 2017.)
  age_test = age + birth_year

  if (2017 - age_test <= 1) && (2017 - age_test >= 0)
    age_math = true
  else
    age_math = false
  end

  puts "Do you want some garlic bread? (yes or no)"
    garlic_answer = gets.chomp
      if garlic_answer == "yes"
        want_garlic = true
      else
        want_garlic = false
      end

  puts "Do you want to enroll in our health insurance program? (yes or no)"
    health_insurance_answer = gets.chomp
      if health_insurance_answer == "yes"
        want_insurance = true
      else
        want_insurance = false
      end


  # Use the below block of print commands to test that the above variables
  #   are correctly stored (and computed, in the case of age_math).
  # p name_is
  # p age_math
  # p want_garlic
  # p want_insurance


  # Set vampy to "inconclusive", then run through a series of
  # checks that will update the vampy variable as the logic dictates
  vampy = "Results inconclusive."

  if age_math==true && (want_garlic==true || want_insurance==true)
    vampy = "Probably not a vampire."
  end

  if age_math==false && (want_garlic==true || want_insurance==true)
    vampy = "Probably a vampire."
  end

  if age_math==false && (want_garlic==false || want_insurance==false)
    vampy = "Almost certainly a vampire."
  end

  if ["Drake Cula", "Tu Fang"].include? name_is
    vampy = "Definitely a goddamn vampire."
  end

  # Output the result of the above block of ifs and add 1 to the loop count
  puts "#{name_is}: #{vampy}"
  count += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"