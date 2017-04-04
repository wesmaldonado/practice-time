# https://leetcode.com/problems/keyboard-row/#/description
class Keyboard
  attr :rows, :considered
  def initialize(considered)
    @considered = considered.map{|w| w.downcase}
    @rows = ['qwertyuiop'.split(''), 'asdfghjkl'.split(''), 'zxcvbnm'.split('')]
  end
  def words
    [].tap { |res| 
    @considered.each do |word|
      rows.each do |row|
        res << word if word.split('').all?{|letter| row.include?(letter)}
      end
    end
    }
  end
end 
