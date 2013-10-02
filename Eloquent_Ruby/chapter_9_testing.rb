require "test/unit"

class Person

	def initialize age, name
		@age  = age
		@name = name
	end

	def say_age
		@age
	end
	
	def say_name
		@name
	end

end

# Tests: PERSON class
class PersonTest < Test::Unit::TestCase
	
	def setup
		@mike = Person.new 21, 'Mike'
	end

	def test_Person_should_return_his_name
		assert_equal @mike.say_name, 'Mike', 'Person is returning incorrect name'
	end

	def test_Person_should_return_his_name
		assert_equal @mike.say_age, 21, 'Person is returning incorrect age'
	end

end

