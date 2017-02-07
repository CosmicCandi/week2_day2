require 'minitest/autorun'
require './converter'

# It has no tests, and you strongly suspect there are bugs lurking in this program.
# So, let's write some tests.
#
# Each method (other than the attr_accessor methods and initialize) should have at least one associated test in converter_test.rb
# Those tests should pass. Of note: Some of these methods have bugs in them. If you run into one, fix it.


class Converter_Test < MiniTest::Test

  def test_c_to_f
    test_num = Converter.new(0)
    assert test_num.c_to_f == 32
  end

  def test_f_to_c
    test_num = Converter.new(212)
    assert test_num.f_to_c == 100
  end

  def test_quarts_to_cups
    test_num = Converter.new(4)
    assert test_num.quarts_to_cups == 16
  end

  def test_cups_to_quarts
    test_num = Converter.new(32)
    assert test_num.cups_to_quarts == 8
  end

  def test_inches_to_feet
    test_num = Converter.new(6)
    assert test_num.inches_to_feet == 0.5
  end

  def test_feet_to_inches
    test_num = Converter.new(0.5)
    assert test_num.feet_to_inches == 6
  end

  def test_seconds_to_milliseconds
    test_num = Converter.new(1000)
    assert test_num.seconds_to_milliseconds == 1_000_000
  end

  def test_milliseconds_to_seconds
    test_num = Converter.new(1_000)
    assert test_num.milliseconds_to_seconds >= 1
  end

  def test_feet_to_miles
  test_num = Converter.new(13_200)
  refute test_num.feet_to_miles == 3
  end

  def test_miles_to_feet
    test_num = Converter.new(5_000)
    #Because I would walk 5_000 miles to make this test work
    #And I would walk 500 more just to be the coder that falls down at your door...
    refute test_num.miles_to_feet != 26_400_000

  end

  def test_feet_to_meters
    test_num = Converter.new(36.100)
    assert test_num.feet_to_meters.round(2) == 11.000
  end

  def test_meters_to_feet
    test_num = Converter.new(1609.344)
    assert test_num.meters_to_feet.round(0) == 5280
  end

  def test_ounce_to_gram
    test_num = Converter.new(15)
    assert test_num.ounce_to_gram.round(1) == 425.2
  end

  def test_gram_to_ounce
    test_num = Converter.new(15)
    assert test_num.gram_to_ounce.round(4) == 0.5291
  end

### Adventurer Mode ###
  def test_days_into_years
    test_num = Converter.new(365.25)
    assert test_num.days_into_years == 1, "A year is 365.25 days to account for leap years."
  end

  def test_years_into_days
    test_num = Converter.new(2)
    assert test_num.years_into_days == 730.5
  end


end
