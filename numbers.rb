=begin
This week’s question:
Given a string, return true if the string represents a valid number. A valid number can include integers, a ., -, or +.

Examples of valid numbers: “7”, “0011”, “+3.14”, “4.”, “-.9”, “-123.456”, “-0.1”

Examples of invalid numbers: “abc”, “1a”, “e8”, “–6”, “-+3”, “95x54e53.”
=end

require 'test/unit/assertions'
include  Test::Unit::Assertions

def is_a_number?(text)
  begin
    result = text.match(/^[+-]?\d*\.?\d*$/)[0]
    return result.eql?(text)
  rescue
    return false
  end

end

assert_equal true, is_a_number?('7'), 'Should be true'
assert_equal true, is_a_number?('0011'), 'Should be true'
assert_equal true, is_a_number?('+3.14'), 'Should be true'
assert_equal true, is_a_number?('4.'), 'Should be true'
assert_equal true, is_a_number?('-.9'), 'Should be true'
assert_equal true, is_a_number?('-123.456'), 'Should be true'
assert_equal true, is_a_number?('-0.1'), 'Should be true'

assert_equal false, is_a_number?('abc'), 'Should be false'
assert_equal false, is_a_number?('1a'), 'Should be false'
assert_equal false, is_a_number?('e8'), 'Should be false'
assert_equal false, is_a_number?('-+3'), 'Should be false'
assert_equal false, is_a_number?('95x54e53.'), 'Should be false'