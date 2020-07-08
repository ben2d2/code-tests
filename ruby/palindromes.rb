def is_palindrome?(n) 
    n == n.to_s.reverse.to_i
end

def get_palindrones_in_range(min, max)
	palindrones = []
	(min..max).each do |n|
	    if is_palindrome?(n)
	        palindrones << n
	    end
	end
	palindrones
end

puts get_palindrones_in_range(0, 10000).sum