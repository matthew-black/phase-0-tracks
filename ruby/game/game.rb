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
  attr_reader :solution_string, :solution_array, :trying_to_solve, :guess, :guess_record, :guesses_remaining

  def initialize
    @is_over = false
    @guess_record = [""]
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
        @trying_to_solve[index] = "!"
      end
      if @solution_array[index] == "'"
        @trying_to_solve[index] = "'"
      end
      if @solution_array[index] == "-"
        @trying_to_solve[index] = "-"
      end
    end

    if @solution_array.length < 5
      @guesses_remaining = 6
    else
      @guesses_remaining = 7
    end
  end

  def get_guess #-this can be smarter, self-#
    @valid_guess = false #-you need to fix the repeated printings-#
    while @valid_guess == false #-of duplicate gueses-#
      if @guess_record[1] == nil #-this bit needs to be one chunk-#
        puts "You haven't made any guesses yet." #-that flows-#
      else                              #-as one chunk/module-#
        puts "Here are the letters you've guessed:" #lkj
          @guess_record.length.times do |index|
            if index == 0
              print " #{@guess_record[1]}"
            else
              print " #{@guess_record[index + 1]}"
            end
          end
          puts " "
      end
        # make list of guessed letters here
        # use method to not display duplicates
        # or letters stored as answers
      print "Guess a letter: "
      @guess = gets.chomp.downcase
        if @guess_record.include?(@guess)
          puts "'#{@guess}' has already been guessed." #lkj
          @valid_guess = false
        else
          @guess_record << @guess
          @guesses_remaining -= 1
          @valid_guess = true
        end
    end
  end

  def clear
    100.times { puts " " }
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

  def show_game_progress #-possibly combine with get_guess to make one-#
    if @guesses_remaining > 1 #-big method called game_logic?-#
      puts "You have #{@guesses_remaining} guesses left."
    elsif @guesses_remaining == 1
      puts "You're down to one guess! Choose wisely."
    end
    puts "Here's the word/phrase you're trying to guess: "
    @trying_to_solve.size.times do |index|
      if index == 0
        print "    #{@trying_to_solve[0]}"
      else
        print " #{@trying_to_solve[index]}"
      end
    end
    puts " "
  end
end
###--/Game Class--###


###--User Interface--###

  #--Initialize instance of game class and get solution--#
word_game = Game.new
puts "Enter a word or phrase for your opponent to guess:"
word_game.get_solution
word_game.clear

  #--Continue to promp for new guesses--#
  #--until game is solved or failed--#
while !word_game.is_over
  word_game.clear
  word_game.show_game_progress
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