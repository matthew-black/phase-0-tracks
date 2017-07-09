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
  # Test calls for the above method:
    # arr = [42, 89, 23, 1, 23, 6, 89, 1, 1, 1, 23]
    # p array_search(arr, 23)
    # p array_search(arr, 5)

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
  # Test calls for the above method:
    # p fibonacci(10)
    # fib_test = fibonacci(100)
    # p fib_test[-1] == 218922995834555169026 #<--should return true

# RELEASE 2
  # Pseudocode:
  #
  #
  #
def array_sort
end