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
