gets = <<IN
5
2 3
-----
-----
p--m-
-----
-----
IN
#!/bin/ruby
# Head ends here
def nextMove(n,x,y,grid)
  puts "LEFT"
end
# Tail starts here
n = gets.to_i

x,y = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,x,y,grid)

def princess_location grid
    grid.split "\n"
end

puts grid