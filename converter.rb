# A class to convert units of measurement
# To use: Converter.new(32).f_to_c == 0
class Converter

  attr_accessor :number

  def initialize(number = 10)
    @number = number
  end

  def c_to_f
   # Multiply by 9, then divide by 5, then add 32
   # For instance, 12C == 53.6F
   ((number * 9)/5) + 32
  end

  def f_to_c
    # Deduct 32, then multiply by 5, then divide by 9
    # For instance, 23F == -5C
    ((number - 32) * 5)/9
  end

  def quarts_to_cups
    # Four cups in a quart
    # So, 2 quarts == 8 cups
    number * 4
  end

  def cups_to_quarts
    number / 4
  end

  def inches_to_feet
    #Set 12 to 12.0 (a float). Without that, you couldn't have a value less
    #than a foot.
    number / 12.0
  end

  def feet_to_inches
    #Set 12 to 12.0 (a float). This gives the proper calculations for decimal
    #values. (e.g. 0.25 feet * 12 = 3 inches.)
    number * 12.0
  end

  def seconds_to_milliseconds
    # 1000 milliseconds per second
    number * 1000
  end

  def milliseconds_to_seconds
    number / 1000
  end

  def feet_to_miles
    # A mile is 5280 feet
    # So, 13200 feet == 2.5 miles
    number / 5280.0
  end

  def miles_to_feet
    number * 5280.0
  end

  def feet_to_meters
    # A meter is 3.28084 feet
    # So, A mile == 1609.344 meters (when rounded to three decimals)
    (number / 3.28084).round(3)
  end

  def meters_to_feet
    number * 3.28084.round(3)
  end

  def ounce_to_gram
    # One ounce == 28.3495 grams
    number * 28.3495
  end

  def gram_to_ounce
    number / 28.3495
  end

end
