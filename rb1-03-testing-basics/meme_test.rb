# frozen_string_literal: true

require "minitest/autorun"

class Meme
  def i_can_haz_cheezburger?
    "OHAI!"
  end

  def will_it_blend?
    "YES!"
  end
end

class CustomError < StandardError
end

class TestMeme < Minitest::Test
  def setup
    @meme = Meme.new
  end

  def test_that_kitty_can_eat
    assert_equal "OHAI!", @meme.i_can_haz_cheezburger?
  end

  def test_that_it_will_not_blend
    refute_match(/^no/i, @meme.will_it_blend?)
  end

  def test_that_will_be_skipped
    skip "test this later"
  end

  def test_assert_and_refute_are_aobut_truthiness
    assert @meme.respond_to?(:will_it_blend?)
    refute @meme.respond_to?(:will_it_fold?)
  end

  def test_assert_nil_says_what_it_means
    assert_nil @meme.instance_variable_get(:@not_set_yet)
  end

  def test_assert_raises_returns_the_exception
    error = assert_raises(CustomError) do
      raise CustomError, "This is really bad"
    end
    assert_equal "This is really bad", error.message
  end
end
