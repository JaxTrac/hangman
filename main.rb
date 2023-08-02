# frozen_string_literal: true

require_relative 'random_word'
require_relative 'guess'

RandomWord.new.output_word_as_underscore
Guess.new.get_letter