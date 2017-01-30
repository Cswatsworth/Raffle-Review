require 'minitest/autorun'
require_relative 'Raffle_v2_Review.rb'

class Test_Review_Raffle < MiniTest::Test

	def test_one_equals_one  #practice test use
		assert_equal(1,1)
	end
	def test_off_by_one
		assert_equal(true,true) #also practice test use
	end
	def test_same_number_returns_false
		winning_num = '1234'
		ticket_num = '1234'
		results = close_but_no_cigar(winning_num, ticket_num)
		assert_equal(false, results) 
	end 
	def test_one_off_returns_true
		winning_num = '1245'
		ticket_num = '2245'
		results = close_but_no_cigar(winning_num, ticket_num)
		assert_equal(true, results)
	end
	# def test_off_two_returns_false
	# 	winning_num = '1234'
	# 	ticket_num = '1222'
	# 	results = close_but_no_cigar(winning_num, ticket_num)
	# 	assert_equal(true, results)
	# end
end