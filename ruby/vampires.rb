# Vampire Detection Program
# (AKA: My Saturday. My entire Saturday.)


# Gets info from user about how many times this program
# needs to be run, starts while loop.
puts "How many prospective employees will be processed?"
  number_of_employees = gets.to_i

count = 0
while number_of_employees > count

  # Gets input from user, converts string response
  # immediately to booleans where necessary.
  puts "What is your name?"
    name_is = gets.chomp

  puts "How old are you? (use digits)"
    age = gets.to_i

  puts "What year were you born? (use digits)"
    birth_year = gets.to_i

    # Evaluates age and birth_year to see if accurate.
    # (Used a range of numbers because being born in 2007 would
    # mean that a person could be 9 *or* 10 in 2017. #LogicWin)
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


        # Use the below block of print commands to test that the above
        # variables are correctly stored and computed.

        # p name_is
        # p age_math
        # p want_garlic
        # p want_insurance


  # Set vampy to "inconclusive", then run through a series of logic
  # checks that will update the vampy variable if necessary.
  vampy = "Results inconclusive."

  if age_math == true && (want_garlic == true || want_insurance == true)
    vampy = "Probably not a vampire."
  end

  if age_math == false && (want_garlic == true || want_insurance == true)
    vampy = "Probably a vampire."
  end
      #--Here's where I think the allergy loop should actually be located--#
  if age_math == false && (want_garlic == false || want_insurance == false)
    vampy = "Almost certainly a vampire."
  end

  if ["Drake Cula", "Tu Fang"].include? name_is #<--Cool syntax from internetz!
    vampy = "Definitely a goddamn vampire in our midst."
  end

  # This is a loop that will continue to ask the user to input their
  # allergies until they either provide a response of 'sunshine' or
  # 'done'. It's a cool feature, but I think it's whack that it overrides
  # some of the stronger logic located above, especially because I went
  # to high school with a girl who was allergic to the sun. (And she was
  # most definitely not a vampire.) If this was my program to design, I'd
  # say that this question loop would make way more sense if it was placed on
  # line 72.
  puts "Please type your allergies one at a time using lowercase letters, pressing enter after each. When you're finished, type 'done' and press enter."
  stop = false
  while stop == false
    puts "Allergy: "
    allergy = gets.chomp
    if allergy == "sunshine"
      vampy = "Probably a vampire"
      stop = true
    elsif allergy == "done"
      stop = true
    else
      stop = false
    end
  end

  # Output the result of the above program and add 1 to the loop count.
  puts "#{name_is}: #{vampy}"
  count += 1
end

# Finally, after the loop has run the appropriate amount of times and has
# presumably identified a vampire or two, we're now going to try to make
# everyone feel safe and happy with this overly optimistic and completely
# misguided sentence. Vampires are no joke, and I am not a fan of how
# dismissive this last bit is. Whoever wrote this release is just asking
# for a disaster, and honestly, I wouldn't be surprised to discover that
# the DBC curriculum design team has been infiltrated by a vampire.
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"