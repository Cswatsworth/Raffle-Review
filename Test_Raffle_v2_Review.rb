require 'minitest/autorun'
require_relative 'Raffle_v2_Review.rb'

class TestRaffleFunction < MiniTest::Test

	def test_off_by_one
		assert_equal(true,true) #practice test use
	end
	def test_same_number_returns_false
		my_num = '1234'
		win_num = '1234'
		results = close_but_no_cigar(win_num, my_num)
		assert_equal(false, results) 
	end 
	def test_one_off_returns_true
		my_num = '1245'
		win_num = '2245'
		results = close_but_no_cigar(win_num, my_num)
		assert_equal(true, results)
	end
	def test_off_two_returns_false
		my_num = '1234'
		win_num = '1222'
		results = close_but_no_cigar(win_num, my_num)
		assert_equal(false, results)
	end
end

class TestReturnRaffle < Minitest::Test

	def test_return_empty_array
		my_num = '1234'
		win_nums = ['5678','9999','5656']
		assert_equal([], returning_function(my_num, win_nums))
	end
	def test_return_array_of_1
		my_num = '1234'
		win_nums = ['3234', '5555', '6789']
		assert_equal(['3234'], returning_function(my_num, win_nums))
	end
	def test_return_array_of_3
		my_num = '5678'
		win_nums = ['1678', '5618', '5578', '5678', '1111']
		assert_equal(['1675','5618','5578'], returning_function(my_num, win_nums))
	end
end
