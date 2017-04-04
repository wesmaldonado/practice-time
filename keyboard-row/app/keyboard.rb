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
            res << word if word.split('').all?{|letter| @rows[0].include?(letter)}
            res << word if word.split('').all?{|letter| @rows[1].include?(letter)}
            res << word if word.split('').all?{|letter| @rows[2].include?(letter)}
    end
    }
  end
end 
