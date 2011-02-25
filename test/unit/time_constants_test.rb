
require 'test/unit'
require 'time_constants'
require 'rubygems'
require 'activesupport'

class TestTimeConstants < Test::Unit::TestCase
  def test_accuracy
    assert_equal 1.hour.to_i, T_1_HOUR
    assert_equal 3.days.to_i, T_3_DAYS
    assert_equal 2.months.to_i, T_2_MONTHS
    assert_equal 20.years.to_i, T_20_YEARS
  end
end
