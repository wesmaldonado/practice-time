require 'rspec/given'

testdir = File.dirname(__FILE__)
$LOAD_PATH.unshift testdir unless $LOAD_PATH.include?(testdir)

libdir = File.dirname(File.dirname(__FILE__)) + '/app'
$LOAD_PATH.unshift libdir unless $LOAD_PATH.include?(libdir)

require 'keyboard.rb'

RSpec.describe 'Return the words that can be typed from one row of keys' do
    Given(:words){ ["Hello", "Alaska", "Dad", "Peace"]}

    it "it finds [\"Alaska\", \"Dad\"]" do
       expect(Keyboard.new(words).words).to eq(["alaska", "dad"])
    end
 end
