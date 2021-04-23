# Given an array of 0s and 1s that represent a garden, where 0 is a plot that hasn’t been planted on,
# and 1 is a plot that has been planted on, return true if n plants can be planted without touching another plant.
#
# Example:
#
# garden = [1,0,0,0,1]
#
# $ canPlant(garden, 1)
# $ true // plant at position 2
# $ canPlant(garden, 4)
# $ false // there are only 3 plots, and two of them can't be planted on

require 'test/unit/assertions'
include Test::Unit::Assertions

def can_plant(garden, plants)
  counter = 0
  plantable = []
  index = 0

  for plot in garden do

    if can_plant_here?(plot)
      plantable << index
      if plantable.include?(index - 1) && plantable.include?(index - 2)
        counter += 1
      end
    end
    index += 1
  end

  if counter >= plants
    return true
  else
    return false
  end
end

def can_plant_here?(this_plot)
  if this_plot == 0
    return true
  else
    return false
  end
end

garden = [1,0,0,0,1]

assert_equal true, can_plant(garden, 1), 'Should be true'
assert_equal false, can_plant(garden, 4), 'Should be false'

garden = [1,0,0,0,1,1,1,0,0,0,1,0,0,0,1,0,0,0]

assert_equal true, can_plant(garden, 4), 'Should be true'