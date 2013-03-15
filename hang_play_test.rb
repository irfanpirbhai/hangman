require "test/unit"
require_relative "hang_play"
# if running ruby 1.9.3 => require_relative "hangman"

class HangPlayTest < Test::Unit::TestCase

	def test_hang_play_random_generator_producing_words
		# skip "Method is called in hang_play; can't test?" # can we test a method in hang_play?
		HangmanPlay.get_a_random_word
		assert_equal "hello", HangmanPlay.word
	end

	def test_hang_play_array_doesnt_change_if_nonalpha_character_inputted
		# skip "Method is called in hang_play; can't test?" # can we test a method in hang_play?
		HangmanPlay.inputletter("3")
		assert false, HangmanPlay.inputcheck?
	end


end