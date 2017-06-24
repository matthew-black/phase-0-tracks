# Encryption Method:

# Take a string
# For each character in string, determine index value (based on alphabet)
# Add 1 to each index value
# Convert index value back to letter
# Add each letter to a new string

def encrypt(string1)
  count = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  newstring = "" #--added blank variable to iterate over
  while count < string1.length
    if string1[count] == " "
      newstring[count] = " " #--add space to our new string
      count += 1
    else
      original = alphabet.index(string1[count])
      converted = original + 1
      encrypted_letter = alphabet[converted]
      newstring[count] = encrypted_letter #--add modified letter to new string
      count += 1
    end
  end
  newstring #--this is the output of the method
end


#Decrypt Method:

# Take a string
# For each character in string, determine index value (based on alphabet)
# Subtract 1 from each index value
# Convert index value back to letter
# Add each letter to a new string

#Decryption method:
def decrypt(string2)
  count = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  newstring = ""
  while count < string2.length
    if string2[count] == " "
      newstring[count] = " "
      count += 1
    else
      original = alphabet.index(string2[count])
      converted = original - 1
      decrypted_letter = alphabet[converted]
      newstring[count] = decrypted_letter
      count += 1
    end
  end
newstring
end

# Testing calls for above functions:
# puts encrypt("afe") #-- should return "bgf"
# puts encrypt("swordfish") #-- should return "txpsegjti"
# puts decrypt("txpsegjti") #-- should return "swordfish"
# puts decrypt(encrypt("swordfish")) #-- should return "swordfish"


# Interface for agent usage:

# Use 'puts' to ask user if they would like encrypt or decrypt their password
# If user answers with 'encrypt'
#   Ask them to enter the password for encryption
#   Run the encrypt method on the password and use 'puts' to display output
# If user answers with 'decrypt'
#   Ask them to enter the password for decryption
#   Run the decrypt method on the password and use 'puts' to display output

puts "Hello, agent. Do you need to encrypt or decrypt your password? (Answer with encrypt or decrypt please.)"
answer = gets.chomp

if answer == "encrypt"
    puts "Please provide the password you'd like to encrypt. (Lowercase characters only.)"
    password = gets.chomp
    puts encrypt(password)
elsif answer == "decrypt"
    puts "Please provide the password you'd like to decrypt. (Lowercase characters only.)"
    password = gets.chomp
    puts decrypt(password)
end