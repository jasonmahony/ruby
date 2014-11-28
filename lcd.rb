#!/usr/bin/env ruby

class Display
  def initialize(integer, scale, lcds)
    @integer = integer
    @scale = scale
    @lcds = lcds
  end
  
  # Shows what we are going to do with the arguments
  def showargs
    puts "  The integer is #{@integer} with a scale of #{@scale}  ".center(60,'*')
  end

  # Display the LCD integer
  def display
    int_array = @integer.chars.map(&:to_i)
    lcd_array = int_array.map { |int| @lcds[int] }
    puts join(lcd_array, " ")
#    new_d = Array.new
#    digits.each do |d|
#      new_d = d[1..-1] * @scale
#    end
#    puts new_d
#   digits.map do |d|
#     if d =~ /\|/
#       @scale.times { puts d }
#     else
#       puts d
#     end
#   end  

  end
end

# Fetching the arguments
if ARGV.size == 2
  num = ARGV[0]
  scale = ARGV[1]
elsif ARGV.size == 1
  scale = 1
  num = ARGV[0]
# Printing message to explain the program if no arguments
else
  puts "  This program accepts 1 or 2 arguments  ".center(60,'*')
  puts " lcd <integer to scale> [ <scale> DEFAULT=1  ]"
  exit
end

template = [

[' - ',
'| |',
' ',
'| |',
' - '],

[' ',
' |',
' ',
' |',
' '],

[' - ',
'  |',
' - ',
'| ',
' - '],

[' - ',
'|',
' - ',
'|',
' - '],

[' ',
'| |',
' - ',
'  |',
' '],

[' - ',
'| ',
' - ',
'  |',
' - '],

[' - ',
'| ',
' - ',
'| |',
' - '],

[' - ',
'  |',
'   ',
'  |',
' '],

[' - ',
'| |',
' - ',
'| |',
' - '],

[' - ',
'| |',
' - ',
'  |',
' - ']

]

lcd = Display.new(num, scale, template)
lcd.showargs
lcd.display

