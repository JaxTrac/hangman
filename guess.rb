# frozen_string_literal: true

# get guess from player
class Guess
  def get_letter
    guess = gets.chomp
    guess = gets.chomp while guess.length != 1 || !guess.match?(/[A-Za-z]/)
  end
end
