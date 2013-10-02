# Switch Statements
def approximate_length string
	l = string.length
	
	length =  case 
						when l < 5
							'Very Short'
						when l < 10
							'Short'
						when l < 20
							'Medium'
						else
							'Long'
						end
end
# p approximate_length 'Hey there you?'

class Human

	def how_many_legs?
		puts 2
	end

end

class User < Human

	def initialize(first_name, last_name, favorites)
		@first_name = first_name
		@last_name  = last_name
		@favorites  = favorites
	end

	def say_name
		puts "My name is #{@first_name} #{@last_name}"
	end

	def say_favorites
		puts "My favorites include #{@favorites[:hobbie]} and #{@favorites[:color]}"
	end

end
