#lambda has strict arguments
#lambda won't affect control flow
test_lambda = lambda do |x, y|
	puts "1 argument: #{x}"
	puts "2 argument: #{y}"
	puts ""
end

test_proc = Proc.new do |x, y|
	puts "1 argument: #{x}"
	puts "2 argument: #{y}"
	puts ""
end

test_lambda.call('first', 'second')

test_proc.call('first', 'second')

###
def execute_block arg
	yield arg
end



def say_name(name)
	print "My name is #{name}"
end

def this_wont_work var
	var.floarr!
rescue
	puts 'Obviously, this doesn\'t work!'
end




