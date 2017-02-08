=begin
Initial foray into Epic mode for this assignment.
Code is very broken.  Still working on wrapping my head around
making TTY work with what's already been written.

I'm not happy with the setup for the prompt.expand . I was hoping
to have more letters available for choices so I could differentiate things better.
Having just one character available is a little limiting and super clunky.
=end

require 'tty'
require './converter'

# prompt = TTY::Prompt.new
#
# choices = [
#   { key: 'c', name: 'Celcius to Fahrenheit', value: :c_to_f },
#   { key: 'f', name: 'Fahrenheit to Celcius', value: :f_to_c },
#   { key: 'q', name: 'Quarts to Cups', value: :quarts_to_cups },
#   { key: 'u', name: 'Cups to Quarts', value: :cups_to_quarts},
#   { key: 'i', name: 'Inches to Feet', value: :inches_to_feet },
#   { key: 'e', name:'Feet to Inches', value: :feet_to_inches},
#   { key: 's', name:'Seconds to Milliseconds', value: :seconds},
#   { key: 'm', name:'Milliseconds to Seconds', value: :milliseconds},
#   { key: 't', name: 'Feet to Miles', value: :feet_to_miles},
#   { key: 'l', name:'Miles to Feet', value: :miles_to_feet},
#   { key: 'r', name:'Feet to Meters', value: :feet_to_meters},
#   { key: 'z', name:'Meters to Feet', value: :meters_to_feet},
#   { key: 'o', name:'Ounce to Gram', value: :ounce_to_gram},
#   { key: 'g', name: 'Gram to Ounce', value: :gram_to_ounce},
#   { key: 'd', name: 'Days to Years', value: :days_into_years},
#   {key: 'y', name: 'Years to Days', value: :years_into_days},
#   {key: 'w', name:'MPH to Knots', value: :miles_per_hour_to_knots},
#   {key: 'k', name: 'Knots to MPH', value: :knots_to_miles_per_hour}]
#
# prompt.expand("Welcome to the Unit Converter. Please select a conversion:", choices)

puts "Welcome to the Unit Converter. Please select a conversion to perform:"
puts "Celcius to Fahrenheit (c)"
puts "Fahrenheit to Celcius (f)"
puts "Quarts to Cups  (q)"
puts "Cups to Quarts  (u)"
puts "Inches to Feet  (i)"
puts "Feet to Inches  (fi)"
puts "Seconds to Milliseconds (s)"
puts "Milliseconds to Seconds (m)"
puts "Feet to Miles (fm)"
puts "Miles to Feet (mf)"
puts "Feet to Meters (fme)"
puts "Meters to Feet (mfe)"
puts "Ounce to Gram (o)"
puts "Gram to Ounce (g)"
puts "Days to Years (d)"
puts "Years to Days (y)"
puts "MPH to Knots (mk)"
puts "Knots to MPH (k)"

choice = gets.chomp.downcase
case choice
when "c"
  puts "Please enter a value (in Celcius) to convert to Fahrenheit..."
  number = gets.chomp.to_i
  output = puts "#{number} is #{Converter.new(number).c_to_f} degrees Celsius"
    if Converter.new(number).c_to_f <= 40
      puts "Brr! That's chilly! #{output}"
    elsif Converter.new(number).c_to_f > 41 || Converter.new(number).c_to_f < 70
      puts "It's getting to be pleasant outside. #{output}"
    else
      "It's really starting to heat up out here! #{output}"
    end

when "f"
  puts "Selected f"
when "q"
  puts "Selected q"
when "u"
  puts "Selected u"
when "i"
  puts "Selected i"
when "fi"
  puts "Selected s"
when "s"
  puts "Selected s"
when "m"
  puts "Selected m"
when "fm"
  puts "Selected fm"
when "mf"
  puts "Selected mf"
when "fme"
  puts "Selected fme"
when "mfe"
  puts "Selected mfe"
when "o"
  puts "Selected o"
when "g"
  puts "Selected g"
when "d"
  puts "Selected d"
when "y"
  puts "Selected y"
when "mk"
  puts "Selected mk"
when "k"
  puts "Selected k"
else
  puts "Please select one of the previously listed options."
end
