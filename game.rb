# frozen_string_literal: true

require_relative 'random_word'
require_relative 'guess'

# create game logic
class Game
  def initialize
    @guess = Guess.new
    @word = RandomWord.new
  end

  def start
    puts 'Welcome to hangman! This is your word:'
    p @word.output_word_as_underscore
    puts 'Please guess a letter:'
    @guess.letter_guess
    compare
  end

 def compare
  p @guess.guess
 end  
end
