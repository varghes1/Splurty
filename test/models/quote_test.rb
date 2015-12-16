require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

	test "unique_tag" do
		quote = Quote.create(:author => 'Bijoy Varghese', :saying => 'What a day!')
		expected = 'BV#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end


end
