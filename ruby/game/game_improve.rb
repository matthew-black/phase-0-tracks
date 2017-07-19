## 6.7 SOLO CHALLENGE: A GAME CLASS

## Feature for later: When a duplicate letter is guessed,
## instead of displaying a message and reprompting with
## more lines in terminal, just upcase the duplicate letter
## in the @guess_record to alert the user of its existence.
## Reprint the game screen in this process to avoid duplicate
## "Guess a letter:" prompts that clog up the UI.
## Then, once a valid guess has been entered, make sure to
## downcase duplicate guess letter.

###--Game Class--###

class Game
  attr_accessor :is_over
  attr_reader :solution_string, :solution_array, :trying_to_solve, :guess, :guess_record, :guesses_remaining, :all_guesses

  def initialize
    @is_over = false
    @guess_record = [""]
    @all_guesses = [""]
  end

  def clear
    100.times { puts " " }
  end

  def get_solution
    @solution_string = gets.chomp
    @solution_array = @solution_string.downcase.split('')
    @trying_to_solve = @solution_array.map{"_"}
    @solution_array.length.times do |index| #-pre-fill w/
      if @solution_array[index] == " "      #-spaces and
        @trying_to_solve[index] = " "       #-punctuation
      end
      if @solution_array[index] == "."
        @trying_to_solve[index] = "."
      end
      if @solution_array[index] == ","
        @trying_to_solve[index] = ","
      end
      if @solution_array[index] == "?"      #-can add more
        @trying_to_solve[index] = "?"       #-things to this!
      end
      if @solution_array[index] == "!"
        @trying_to_solve[index] = "!"       #-refactor by adding
      end                                   #-these chars to an array?
      if @solution_array[index] == "'"
        @trying_to_solve[index] = "'"
      end
      if @solution_array[index] == "-"
        @trying_to_solve[index] = "-"
      end
      if @solution_array[index] == "/"
        @trying_to_solve[index] = "/"
      end
      if @solution_array[index] == "/"
        @trying_to_solve[index] = "/"
      end
      if @solution_array[index] == "\""
        @trying_to_solve[index] = "\""
      end
    end

    if @solution_array.length < 5
      @guesses_remaining = 5
    else
      @guesses_remaining = 6
    end
  end

  def get_guess
    @valid_guess = false
    @not_duplicate_guess = true
    while @valid_guess == false
      puts "Here's what you're trying to guess:"
      @trying_to_solve.size.times do |index|
        if index == 0
          print "  #{@trying_to_solve[0]}"
        else
          print " #{@trying_to_solve[index]}"
        end
      end
      puts " "
      puts " "

      if @guess_record[1] != nil
        puts "You've guessed:"
          @guess_record.length.times do |count|
            if count == 0
              if @guess_record.length == 2
                print "  #{@guess_record[1]}"
              elsif (@guess == @guess_record[1])
                print "  #{@guess_record[1].upcase}!"
              else
                print "  #{@guess_record[1]}"
              end
            else
              # if (@guess == @duplicate_guesses[-1])
              #   print " #{@guess_record[index + 1].upcase}!"
              # else
                print " #{@guess_record[count + 1]}"
              #end
            end
          end
      end
      puts " "

      if @guesses_remaining > 1
        puts "You have #{@guesses_remaining} guesses left."
      elsif @guesses_remaining == 1
        puts "You're down to one guess! Choose wisely."
      end
      puts " "

      print "Guess a letter: "
      @guess = gets.chomp.downcase
      @all_guesses << @guess
      if @guess_record.include?(@guess)
        @valid_guess = false
        @not_duplicate_guess = false
        clear
      else
        @guess_record << @guess
        @guesses_remaining -= 1
        @valid_guess = true
        @not_duplicate_guess = true
        clear
      end
    end
  end

  def check_guess
    @good_guess = false
    @solution_array.length.times do |index|
      if @solution_array[index] == @guess
        @trying_to_solve[index] = @guess
        @good_guess = true
      end
    end
      if @good_guess == true
        @guesses_remaining += 1
      end
  end

end


###--User Interface--###

  #--Initialize instance of game class and get solution--#
word_game = Game.new
puts "Enter a word or phrase for your opponent to guess:"
word_game.get_solution
word_game.clear

  #--Continue to promp for new guesses--#
  #--until game is solved or failed--#
while !word_game.is_over
  word_game.clear # possibly all you need to do is put the clear screen inside the logic...
  word_game.get_guess
  word_game.check_guess
  if word_game.solution_array == word_game.trying_to_solve
    word_game.clear
    puts "Nice work! The word/phrase was: '#{word_game.solution_string}'"
      if word_game.guesses_remaining == 1
        puts "You solved it with only one guess remaining!"
      else
        puts "You solved it with #{word_game.guesses_remaining} guesses remaining."
      end
    word_game.is_over = true
  elsif word_game.guesses_remaining == 0
    word_game.clear
    puts "GAME OVER!"
    puts " "
    puts "The word/phrase you failed to guess was:"
    puts "  #{word_game.solution_string}"
    word_game.is_over = true
  end
end