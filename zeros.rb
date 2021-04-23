=begin
Given an integer array, move all 0s to the end of it while maintaining the relative order of the non-zeroes.
Bonus: do this without making a copy of the array!

Example:

$ moveZeroes([0,2,0,3,8])
$ [2,3,8,0,0]
=end

require 'test/unit/assertions'
include Test::Unit::Assertions

def moveZeroes(array)

  original_lenght = array.length
  array.delete(0)
  deleted_zeros = original_lenght - array.length

  counter = 0
  while counter < deleted_zeros
    array.append(0)
    counter += 1
  end

  return array
end


assert_equal [2,3,8,0,0], moveZeroes([0,2,0,3,8]), 'Expected to see 0s at the end'