#!/usr/bin/env ruby

class Display
  def initialize(integer, scale, lcds)
    @integer = integer
    @scale = scale.to_i
    @lcds = lcds
  end
  
  def showargs
    puts "  The integer is #{@integer} with a scale of #{@scale}  ".center(60,'*')
  end

  # Display the LCD integer
  def display
#    int_array = @integer.chars.map(&:to_i)
    digits = @integer.chars.map { |n| @lcds[n.to_i] }
      digits.each do |digit|
        digit.each do |row|
          # Scale horizontally
          row[1, 1] = row[1, 1] * @scale
          # Scale vertically    
          if row =~ /\|/
            @scale.times { puts row }
          else
            puts row
          end
        end
      end
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
  puts " lcd <integer to scale> [ <scale> DEFAULT=1 ]"
  exit
end

template = [

[' - ',
'| |',
' ',
'| |',
' - '],

[' ',
'  |',
' ',
'  |',
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
lcd.display
lcd.showargs
