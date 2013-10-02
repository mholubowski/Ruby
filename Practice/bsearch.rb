########################################
# Binary Search
########################################

# returns index of needle
def binary_search(haystack, needle)
	mid_index = mid_index(haystack)
	mid_value = haystack[mid_index]
	if needle == mid_value
		return "Found it: #{haystack}, #{needle}, at index #{mid_index}"
	elsif needle < mid_value
		haystack.slice!(mid_index..haystack.length)
	elsif mid_value < needle
		haystack.slice!(0..mid_index)
	end
	p haystack
	binary_search(haystack, needle)
end
		

		


def mid_index(haystack)
	index = (haystack.length/2)
end


hay = (1..114_243).to_a

# puts mid_index(hay)

puts binary_search(hay, 3)