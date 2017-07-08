# Pseudocode:

# Step One = Super easy:
# Swap the first and last names simply by splitting
# a full_name string into an array of two words. Then,
# flip the order of the items in the array and join
# back into a single string.

# Step Two
# Set variables that contain the vowels and
# consonants in strings. Split these strings
# into arrays so you can use them as logic
# conditions.
# If the letter of the string is a vowel,
# use the vowel variable as an index to do +1
# Else the letter is a consonant, use the
# consonant variable as an index to do +1.
# To deal with capital letters, we'll need to
# add some conditional logic to detect case
# inside the loop that we're using to iterate
# through the arrays. (Probably need to make two
# more variables that contain uppercase vowels
# and consonants? And use a method that looks to
# see if a variable contains a specific character.)


#Alias Manager Program!

# Flip the order of first name and last
# name when provided in a single string:
def first_last_swap (full_name_string)
    swapped_full_name_array = full_name_string.split(' ').rotate(1)
    swapped_full_name_string = swapped_full_name_array.join(' ')
end


# Change the name string into an alias:
def name_to_alias(string)
  # Create all the variables/arrays required by the
  # if/elsif statements:
  vowels_downcase = "aeiou"
  vowels_downcase_array = vowels_downcase.split('')
  vowels_upcase = "AEIOU"
  vowels_upcase_array = vowels_upcase.split('')
  consonants_downcase = "bcdfghjklmnpqrstvwxyz"
  consonants_downcase_array = consonants_downcase.split('')
  consonants_upcase = "BCDFGHJKLMNPQRSTVWXYZ"
  consonants_upcase_array = consonants_upcase.split('')
  # Loop through the original string, use arrays that
  # contain character sets to determine what logic to
  # apply in adding a new character to the alias_string
  # variable:
  alias_string = ""
  count = 0
  while count < string.length
    if string[count] == " "
      alias_string[count] = " "
      count +=1
    elsif vowels_downcase_array.include? string[count]
      converted = vowels_downcase.index(string[count]) + 1
      alias_letter = vowels_downcase[converted]
      alias_string[count] = alias_letter
      count += 1
    elsif consonants_downcase_array.include? string[count]
      converted = consonants_downcase.index(string[count]) + 1
      alias_letter = consonants_downcase[converted]
      alias_string[count] = alias_letter
      count += 1
    elsif vowels_upcase_array.include? string[count]
      converted = vowels_downcase.index(string[count]) + 1
      alias_letter = vowels_upcase[converted]
      alias_string[count] = alias_letter
      count += 1
    elsif consonants_upcase_array.include? string[count]
      converted = consonants_upcase.index(string[count]) + 1
      alias_letter = consonants_upcase[converted]
      alias_string[count] = alias_letter
      count += 1
    else
      alias_string[count] = " "
    end
  end
alias_string
end

  # Test calls to make sure all the above stuff works!
    # names_string = first_last_swap("Matthew Black")
    # puts name_to_alias(names_string)
    # names_string = first_last_swap("Felicia Torres")
    # puts name_to_alias(names_string)

# Method that flips the order of first name and
# last name when provided in a single string:
def first_last_swap (full_name_string)
    swapped_full_name_array = full_name_string.split(' ').rotate(1)
    swapped_full_name_string = swapped_full_name_array.join(' ')
end


# Method that changes the name string into
# an alias:
def name_to_alias(string)
  # All the variables/arrays required by the
  # if/elsif statements:
  vowels_downcase = "aeiou"
  vowels_downcase_array = vowels_downcase.split('')
  vowels_upcase = "AEIOU"
  vowels_upcase_array = vowels_upcase.split('')
  consonants_downcase = "bcdfghjklmnpqrstvwxyz"
  consonants_downcase_array = consonants_downcase.split('')
  consonants_upcase = "BCDFGHJKLMNPQRSTVWXYZ"
  consonants_upcase_array = consonants_upcase.split('')
  # The logic stuff that builds a new string
  # based on the specs for 5.5:
  alias_string = ""
  count = 0
  while count < string.length
    if string[count] == " "
      alias_string[count] = " "
      count +=1
    elsif vowels_downcase_array.include? string[count]
      converted = vowels_downcase.index(string[count]) + 1
      alias_letter = vowels_downcase[converted]
      alias_string[count] = alias_letter
      count += 1
    elsif consonants_downcase_array.include? string[count]
      converted = consonants_downcase.index(string[count]) + 1
      alias_letter = consonants_downcase[converted]
      alias_string[count] = alias_letter
      count += 1
    elsif vowels_upcase_array.include? string[count]
      converted = vowels_downcase.index(string[count]) + 1
      alias_letter = vowels_upcase[converted]
      alias_string[count] = alias_letter
      count += 1
    elsif consonants_upcase_array.include? string[count]
      converted = consonants_upcase.index(string[count]) + 1
      alias_letter = consonants_upcase[converted]
      alias_string[count] = alias_letter
      count += 1
    else
      alias_string[count] = " "
    end
  end
alias_string
end

  # Test calls to make sure all the above stuff works!
    # names_string = first_last_swap("Matthew Black")
    # puts name_to_alias(names_string)
    # names_string = first_last_swap("Felicia Torres")
    # puts name_to_alias(names_string)

# User interface:
puts "Welcome to the world's most advanced alias creation program."
puts "Please type a first and last name. Then, press enter to receive an alias."
puts "Type 'quit' when you've finished creating aliases."
not_done = true
while not_done
  print "First and last name: "
  user_response = gets.chomp
  if user_response.downcase == "quit"
    puts "Thanks for using the world's most advanced alias creation program."
    not_done = false
  else
    names_string = first_last_swap(user_response)
    alias_string = name_to_alias(names_string)
    puts "#{user_response}'s alias is #{alias_string}"
  end
end



