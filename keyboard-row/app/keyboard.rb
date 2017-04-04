# https://leetcode.com/problems/keyboard-row/#/description
class Keyboard
  attr :rows, :considered
  def initialize(considered)
    @considered = considered.map{|w| w.downcase}
    @rows = ['qwertyuiop'.split(''), 'asdfghjkl'.split(''), 'zxcvbnm'.split('')]
  end
  def words
          row_one = []
          row_two = []
          row_three = []
    @considered.each do |word|
            row_one << word if word.split('').all?{|letter| @rows[0].include?(letter)}
            row_two << word if word.split('').all?{|letter| @rows[1].include?(letter)}
            row_three << word if word.split('').all?{|letter| @rows[2].include?(letter)}
    end
    [row_one, row_two, row_three].flatten
  end
end 
