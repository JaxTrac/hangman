# frozen_string_literal: true

require_relative 'random_word'
require_relative 'guess'

# create game logic
class Game
  def initialize
    @guess = Guess.new
    @word = RandomWord.new
    @word_underscore = @word.output_word_as_underscore
    @number_of_guesses = 10
  end

  def start
    puts 'Welcome to hangman! This is your word:'
    p @word_underscore
    p @word.word
    puts 'Please guess a letter:'
    rounds
  end

  def rounds
    @number_of_guesses.times do
      @guess.letter_guess
      compare
      break if check_win

      @number_of_guesses -= 1

      puts "You got #{@number_of_guesses} left!"
    end
  end

  def compare
    @word.word.each_char.with_index do |letter, index|
      @word_underscore[index] = @guess.guess if letter == @guess.guess
    end
    p @word_underscore
  end

  def check_win
    @word_underscore == @word.word
  end
end
