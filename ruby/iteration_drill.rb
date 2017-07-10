#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#  Array Drills
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each { |supply| print "#{supply} # " }

# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----

def array_search(string, array)
    search = false
    array.each do |x|
      if x == string
        search = true
      end
    end
search
end
    ## Test Calls:
      # p array_search("boots", zombie_apocalypse_supplies)
      # p array_search("compass", zombie_apocalypse_supplies)
      # p array_search("rations", zombie_apocalypse_supplies)
      # p array_search("accordion", zombie_apocalypse_supplies)

# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----

  #--I was going to be more specific about which items to delete,
  #--but I figured it actually made the most sense to get rid of the three
  #--items that happened to be the "last" three things in the array.
  #--I'm assuming that if I'm just packing my gear now, it's still
  #--pretty early in the game. Rather than worrying about where I am,
  #--or trying to get in touch with other survivors, I think it'll be
  #--best to just focus on making through the first few weeks.
def limit_supplies_to_5(array)
  array.each do
    if array.size > 5
      array.delete_at(-1)
    end
  end
end
limit_supplies_to_5(zombie_apocalypse_supplies)
    # Test Call:
      # p zombie_apocalypse_supplies

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

def supply_combine(array1, array2)
  array3 = array1 + array2
  array3 = array3.uniq!
end
combined_survivor_supplies = supply_combine(zombie_apocalypse_supplies, other_survivor_supplies)

    ## Test Call:
      # p combined_survivor_supplies

#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#  Hash Drills
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----
