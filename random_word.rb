# frozen_string_literal: true

# take random word out of txt file
class RandomWord
  def initialize
    @file = 'random_words.txt'
    @array = []
  end

  def convert_to_array
    File.readlines(@file).each { |line| @array << line.strip }
  end

  def pick_random_word
    convert_to_array
    length_array = @array.length
    random_num = rand(length_array - 1)
    @array[random_num]
  end

  def check_length
    word = pick_random_word
    min_length = 4
    word = pick_random_word while word.length <= min_length
    word
  end

  def output_word
    puts check_length
  end
end
