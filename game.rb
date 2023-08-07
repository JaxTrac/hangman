# frozen_string_literal: true

require_relative 'random_word'
require_relative 'guess'

# create game logic
class Game
  def initialize
    @guess = Guess.new
    @word = RandomWord.new
    @word_underscore = @word.output_word_as_underscore
  end

  def start
    puts 'Welcome to hangman! This is your word:'
    p @word_underscore
    puts 'Please guess a letter:'
    10.times do
      @guess.letter_guess
      compare
    end
  end

  def compare
    @word.word.each_char.with_index do |letter, index|
      @word_underscore[index] = @guess.guess if letter == @guess.guess
    end
    p @word_underscore
  end
end
