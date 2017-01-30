def close_but_no_cigar(winning_num, ticket_num) 
					 # flase   last thing evaul. (telling it to return false)
matches = 0
index_position = 0

	ticket_num.length.times do
		
			if ticket_num[index_position] == winning_num[index_position]
				matches = matches + 1							 
		
			end											
		index_position += 1
		end
	
	 		if matches == ticket_num.length - 1
	 			true
			else
				false
			end
end							