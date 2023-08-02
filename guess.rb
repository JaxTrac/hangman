# frozen_string_literal: true

# get guess from player
class Guess
  attr_accessor :guess

  def initialize
    @guess = guess
  end

  def letter_guess
    @guess = gets.chomp
    @guess = gets.chomp while guess.length != 1 || !guess.match?(/[A-Za-z]/)
  end
end
