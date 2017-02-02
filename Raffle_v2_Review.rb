def close_but_no_cigar(win_num, my_num) 
					 # flase   last thing evaul. (telling it to return false)
		matches = 0
		index_position = 0

		my_num.length.times do
		
			if my_num[index_position] == win_num[index_position]
					matches = matches + 1							 
		
			end											
			index_position += 1
		end

		my_num.length - matches == 1

end	

def returning_function(my_num, win_nums)
		array = []

		win_nums.each do |win_num|

			
			if off(win_num, my_num)
				array << win_num
			end

		end
		array
end