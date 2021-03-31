# This week’s question:
# Given a string, return true if the string represents a valid number. A valid number can include integers, a ., -, or +.
#
# Examples of valid numbers: “7”, “0011”, “+3.14”, “4.”, “-.9”, “-123.456”, “-0.1”
#
# Examples of invalid numbers: “abc”, “1a”, “e8”, “–6”, “-+3”, “95x54e53.”

loop do
  puts "Enter any string:"
  user_string = gets.chop

  if user_string == 'quit'
    break
  end

  has_symbol = !!user_string[0].match(/^\+?\-?\W/)

  begin
    if user_string.length > 1 && has_symbol
      result = user_string[1..-1].match(/^\d*\.?\d*/)
    else
      result = user_string.match(/^\d*\.?\d*/)
    end
  rescue ArgumentError
    result = nil
  end

  if !result
    puts 'this is not a number'
  else
    matching_string = has_symbol ? user_string[0] + result[0] : result[0]

    if matching_string.eql?(user_string)
      puts "this is a number"
    else
      puts "this is not a number"
    end
  end
  puts
end
