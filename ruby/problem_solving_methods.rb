 # RELEASE 0
  # Searches an array for a certain integer.
  # If found, returns its index position(s).
  # If no integer matches, returns nil.
def array_search(array, integer)
  count = 0
  stored_index_matches = []
  integer_index = nil
  while count < array.length
    if array[count] == integer
      integer_index = count
      stored_index_matches << integer_index
      count += 1
    else
      count += 1
    end
  end
  if integer_index == nil  #<--determines what the method's
    integer_index          #<--return value should be, either
  else                     #<--nil or an array containing index
    stored_index_matches   #<--numbers for matching integers
  end
end
  # # Test calls for the above method:
  #   arr = [42, 89, 23, 1, 23, 6, 89, 1, 1, 23]
  #   p array_search(arr, 23)
  #   p array_search(arr, 5)


# RELEASE 1
  # Calculates a specified amount of numbers from
  # the Fibonacci sequence.
def fibonacci(how_many_numbers)
  fibonacci_sequence = []
  count = 0
  while count < how_many_numbers
    if count == 0
      fibonacci_sequence << 0
      count += 1
    elsif count == 1
      fibonacci_sequence << 1
      count += 1
    else
      fibonacci_sequence << fibonacci_sequence[-1] + fibonacci_sequence[-2]
      count += 1
    end
  end
  fibonacci_sequence
end
  # # Test calls for the above method:
  #   p fibonacci(10)
  #   fib_test = fibonacci(100)
  #   p fib_test[-1] == 218922995834555169026 #<--should return true


# RELEASE 2 Pseudocode
  # The "bigger bubble" sort method:
  # 1. If the array only contains one value, return the array.
  # 2. If the array contains two values:
  #    A. Ensure that smaller value is at position 0
  #    B. Return the array
  # 3. If the array contains more than two values, evaulate the
  #    first three integers and correctly sort them.
  # 4. Loop through the array one index value at a time, continuing
  #    to sort in groups of three.
  #    A. The loop will need to run two iterations less than the
  #       total number of items in the array to prevent an arror.
  #    B. The loop will need to run inside of another loop that will
  #       keep going until no changes to the array have been made.

# RELEASE 2
  # Sorts integers in an array. This sorting method breaks down if there
  # are too many identical integers inside the array. So, it's a horrible
  # sorting algorithm, but I learned a lot about how an algorithm can be
  # horrible. I'm going to walk away from this with a positive mindset...
def array_sort(arr)
x = arr.length
if x == 1
elsif x == 2
  if arr[0] > arr[1]
    arr[0], arr[1] = arr[1], arr[0]
  end
else
  loop do
    modified = FALSE
    (x-2).times do |x|
      if (arr[x] < arr[x + 1]) && (arr[x] < arr[x + 2])
        if arr[x + 2] < arr[x + 1]
          arr[x], arr[x + 1], arr[x + 2] = arr[x], arr [x + 2], arr[x + 1]
          modified = TRUE
        end
      elsif (arr[x + 1] < arr[x]) && (arr[x + 1] < arr[x + 2])
        if arr[x] < arr[x + 2]
          arr[x], arr[x + 1], arr[x + 2] = arr[x + 1], arr[x], arr[x + 2]
          modified = TRUE
        elsif arr[x + 2] < arr[x]
          arr[x], arr[x + 1], arr[x + 2] = arr[x + 1], arr [x + 2], arr[x]
          modified = TRUE
        elsif arr[x + 2] == arr[x]
          arr[x], arr[x + 1], arr[x + 2] = arr[x + 1], arr[x], arr[x + 2]
          modified = TRUE
        end
      elsif (arr[x + 2] < arr[x]) && (arr[x + 2] < arr[x + 1])
        if arr[x] < arr[x + 1]
          arr[x], arr[x + 1], arr[x + 2] = arr[x + 2], arr[x], arr[x + 1]
          modified = TRUE
        elsif arr[x + 1] < arr[x]
          arr[x], arr[x + 1], arr[x + 2] = arr[x + 2], arr[x + 1], arr[x]
          modified = TRUE
        elsif arr[x] == arr[x + 1]
          arr[x], arr[x + 1], arr[x + 2] = arr[x + 2], arr[x], arr[x + 1]
          modified = TRUE
        end
      end
    end
    break if modified == FALSE
  end
end
  arr
end
  # #Tests for the above method:
  #   array0 = [1]
  #   array1 = [4, 4]
  #   array2 = [2, 1]
  #   array3 = [1, 2]
  #   array4 = [10, 1, 15, 5, 2, 1, 3, 61, 1]
  #   array_fail = [5, 7, 1, 5, 10, 5, 11, 5, 1, 5, 2, 5, 5]
  #   #---^this will result in a 7 getting stuck in a parade of 5s^
  #   p array_sort(array0)
  #   p array_sort(array1)
  #   p array_sort(array2)
  #   p array_sort(array3)
  #   p array_sort(array4)
  #   p array_sort(array_fail)