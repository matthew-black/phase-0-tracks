## 6.7 SOLO CHALLENGE: A GAME CLASS


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
    if @solution_array.length < 5
      @guesses_remaining = 6
    else
      @guesses_remaining = 7
    end
  end

  def get_guess
    @valid_guess = false
    while @valid_guess == false
      print "Guess a letter: "
      @guess = gets.chomp
        if @guess_record.include?(@guess)
          puts "'#{@guess}' has already been guessed."
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

  def show_game_progress
    if @guesses_remaining > 1
      puts "You have #{@guesses_remaining} guesses left."
    elsif @guesses_remaining == 1
      puts "You're down to one guess! Choose wisely."
    end
    puts "Here's the word you're trying to guess: "
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
puts "Enter a word for your opponent to guess:"
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
    puts "Nice work! The word was '#{word_game.solution_string}'!"
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
    puts "The word you failed to guess was:"
    puts "  #{word_game.solution_string}"
    word_game.is_over = true
  end
end
###--/User Interface--###