# https://leetcode.com/problems/island-perimeter/#/description
class Grid
 
  attr_reader :grid

  def initialize(grid = [[],[],[],[]])
    @grid = grid
  end

  def max_x 
    grid.size - 1
  end

  def max_y
    grid.first.size - 1
  end

  def land?(x, y)
     return false if oob?(x,y)
     grid[x][y] == 1
  end

  def water?(x, y)
    return false if oob?(x,y)
    (grid[x][y] == 0)
  end
  
  def oob?(x,y)
    return true if x < 0
    return true if y < 0
    return true if x > max_x
    return true if y > max_y
    false
  end

  def perimeter_at(x,y)
     return 0 if water?(x,y)
     p = 0
    
     # left
     p = p + 1 if oob?(x - 1, y) || water?(x - 1,y) 
     # right
     p = p + 1 if oob?(x + 1, y) || water?(x + 1,y) 
     
     # up
     p = p + 1 if oob?(x, y - 1) || water?(x, y - 1) 
   
     # down
     p = p + 1 if oob?(x, y + 1) || water?(x, y + 1) 
     p
  end

  def perimeter
    p = 0
    grid.each_index do |x|
       grid[x].each_index do |y|
         p = p + perimeter_at(x,y)
       end
    end
    p
  end
end
