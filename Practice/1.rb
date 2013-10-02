text = File.open('1.txt')

text.each_line do |line|
	puts line
	puts "#{line.length} characters"
end

def quick_write input
	File.open('quick_write.txt', 'w+') do |text_file|
		text_file.write(input + "\n")
	end
end