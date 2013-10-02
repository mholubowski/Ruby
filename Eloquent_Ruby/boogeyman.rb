# class Boogeyman
# 	attr_reader :scare_factor
# 	attr_writer :scare_factor
# 						#or
# 	attr_accessor
# 	attr_a
# 	# def initialize scare_factor
# 	# 	@scare_factor = scare_factor
# 	# end


# 	puts 'loaded'
# end
module Movement
	def walk distance, direction
		puts "I just walked #{distance} to the #{direction}"
	end

	def jumping_jacks num
		num.times {|n| puts "Jumping Jack! #{n + 1} \n"}
	end

end



class Person
	include Movement
	attr_accessor :height
	attr_accessor :age

	def say_info
		puts "I am #{height} inches tall, and #{age} years old"
	end
	
	def tired?
		t = Time.now
		hour = t.hour
		min  = t.min
		time = "#{hour} : #{min}"

		case 
		when hour < 8
			puts %Q(I'm still asleep! Its only #{time}..)
		when hour < 20
			puts %Q(Wide awake at #{time}!)
		else
			pust %Q(Getting Sleepy...#{time} is past my bedtime)
		end

	end

end


class Lily < Person
	attr_accessor :purse


	def say_purse
		puts "I have a new #{@purse} purse"
	end
end