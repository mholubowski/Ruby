def print_every_5_seconds

  5.times do 
    puts 'every 5'
    sleep 5
  end
end

def print_every_3_seconds num
  5.times do 
    puts "Thread #{num}"
    sleep 3
  end
  puts "** DONE #{num} **"
end

# print_every_5_seconds
# print_every_3_seconds

(1..100).each do |num|
  Thread.new do 
    print_every_3_seconds num
  end
end

# Thread.new do
#   print_every_5_seconds
# end

# Thread.new do
#   print_every_3_seconds
# end