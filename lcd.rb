#!/usr/bin/env ruby

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

class Display
  def initialize(integer, scale, lcds=template)
    @integer = lcd
    @scale = scale
    @digit = lcds
  end
  
  # Shows what we are going to do with the arguments
  def showargs
    puts "  The integer is #{@lcd} with a scale of #{@size}  ".center(60,'*')
  end

  # Display the LCD integer
  def display
    lcds.each { |row| row[1, 1] = row[1, 1] * scale }
    lcds.each do |row|
      if row =~ /\|/
        scale.times { puts row }
      else
        puts row
      end
    end
  end
end


lcd = Display.new(num,scale).showargs
lcd.display

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
' |',
' - ',
'| ',
' - '],

[' - ',
' |',
' - ',
' |',
' - '],

[' ',
'| |',
' - ',
' |',
' '],

[' - ',
'| ',
' - ',
' |',
' - '],

[' - ',
'| ',
' - ',
'| |',
' - '],

[' - ',
' |',
' ',
' |',
' '],

[' - ',
'| |',
' - ',
'| |',
' - '],

[' - ',
'| |',
' - ',
' |',
' - ']

]

