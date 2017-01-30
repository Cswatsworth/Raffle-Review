def raffle_function(ticket_num, winning_num_array) #raffle_array, name it anything
	 
	#if winning_num_array.include?(ticket_num)
		#true
	#else
		#false
	#end
	#reapeat without using .include? irritarate thru array ourself

	


	# counter = 0				#counter is another way
	# winning_num_array.each do |ticket|
	# 	if ticket_num == ticket
	# 		counter = counter + 1
	# 	end
		
	# end

	# if counter > 0
	# 	true
	# else
	# 	false
	# end

	counter = []
	winning_num_array.each do |ticket|
		if ticket_num == ticket
			counter << ticket
		end
	end
	if counter.length > 0
		true
	else
		false
	end
	
end