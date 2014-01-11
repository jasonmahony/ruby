#!/Users/jason/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

class Die
  attr_reader :number

  def roll
    @number = rand(1..6)
  end
  
end