class Asset 
	include Enumerable
	attr_reader :logger

	def initialize logger
		@logger = logger
		@additions = [{date: 'Sunday', type: 'Cash', currency: '$', value: '500'}, {date: 'Tuesday', type: 'Cash', currency: '()', value: '200'}]
	end

	def do_with_log (message = '?')
		@logger.log("Starting #{message} - at #{Time.now}")
		yield
		@logger.log("Finished #{message} - at #{Time.now}")
	end


	def each
		@additions.each { |add| yield(add[:value]) }
	end

	def on_save (&callback)
		@on_save = callback
	end

	def save
		puts "Saving #{self.class}..."
		@on_save.call if @on_save
	end

end

class Logger
  attr_reader :logs

	def initialize
		@logs = []
	end

	def log message
		@logs << message
	end

end


#callbacks
