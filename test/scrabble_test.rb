gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
#require 'minitest/emoji' *doesn't work*
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_two_letter_word
    assert_equal 2, Scrabble.new.score("aa")
  end

  def test_other_two_letter_word
    assert_equal 20, Scrabble.new.score("zz")
  end

  def _test_two_letter_word_upcase
    assert_equal 20, Scrabble.new.score("ZZ")
  end

  def test_two_letter_word_mixed
    assert_equal 20, Scrabble.new.score("Zz")
  end

  def test_great_instructor
  assert_equal 10, Scrabble.new.score("Mike")
  end

  def test_great_assistant_instructors
    assert_equal 7, Scrabble.new.score("SalnAli")
  end

  def test_nil
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_empty_string
    assert_equal 0, Scrabble.new.score("")
  end
end
