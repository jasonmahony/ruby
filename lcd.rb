
if ARGV.size == 3
  scale = ARGV[1]
  num = ARGV[2]
else
  scale = 2
  num = ARGV[0]
end

class Display
  def initialize(number,size)
    @number = number
    @size = size
  end
  def shownum
    puts "The number is #{@number} with a scale of #{@size}"
  end
end

lcd = Display.new(num,scale)
lcd.shownum
