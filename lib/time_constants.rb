class Time
  def self.set_time_constant(number, unit, seconds)
    Object.const_set(constant = "T_#{number}_#{unit}#{number > 1 ? 'S' : ''}", seconds)
  end
end

101.times { |i| Time.set_time_constant(i, "SECOND", i) }
101.times { |i| Time.set_time_constant(i, "MINUTE", i * T_60_SECONDS) }
101.times { |i| Time.set_time_constant(i, "HOUR", i * T_60_MINUTES) }
501.times { |i| Time.set_time_constant(i, "DAY", i * T_24_HOURS) }
101.times { |i| Time.set_time_constant(i, "WEEK", i * T_7_DAYS) }
101.times { |i| Time.set_time_constant(i, "MONTH", i * T_30_DAYS) }
101.times { |i| Time.set_time_constant(i, "YEAR", i * (T_365_DAYS + T_6_HOURS)) }
101.times { |i| Time.set_time_constant(i, "SOLAR_YEAR", i * 31558150) }
