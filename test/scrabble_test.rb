require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

 class ScrabbleTest < MiniTest::Unit::TestCase
   def test_it_can_score_a_single_letter
     game = Scrabble.new

     assert_equal 1, game.score("a")
     assert_equal 4, game.score("f")
   end

   def test_it_can_score_an_entire_word
     game = Scrabble.new

     assert_equal 8, game.score("hello")
   end

   def test_empty_string_for_score_of_zero
     game = Scrabble.new

     assert_equal 0, game.score("")
   end

   def test_nil_returns_zero
     skip
     game = Scrabble.new

     assert_equal 0, game.score(nil)
   end

   def test_can_score_word_with_multipliers
     game = Scrabble.new

     assert_equal 9, game.score_with_multipliers('hello', [1,2,1,1,1])
   end
 end
