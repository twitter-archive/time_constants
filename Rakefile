require 'echoe'

Echoe.new("time_constants") do |p|
  p.author = "Evan Weaver"
  p.project = "twitter"
  p.summary = "Time constants, in seconds, so you don't have to use slow ActiveSupport helpers."
end

def set_time_constant(number, unit, seconds)
  File.open("lib/time_constants.rb", "a") do |f|
    f.puts "T_#{number}_#{unit}#{number > 1 ? 'S' : ''} = #{seconds}"
  end
end

task :generate do
  File.unlink("lib/time_constants.rb")
  101.times { |i| set_time_constant(i, "SECOND", i) }
  101.times { |i| set_time_constant(i, "MINUTE", i * 60) }
  101.times { |i| set_time_constant(i, "HOUR", i * 60 * 60) }
  501.times { |i| set_time_constant(i, "DAY", i * 60 * 60 * 24) }
  101.times { |i| set_time_constant(i, "WEEK", i * 60 * 60 * 24 * 7) }
  101.times { |i| set_time_constant(i, "MONTH", i * 60 * 60 * 24 * 30) }
  101.times { |i| set_time_constant(i, "YEAR", i * (60 * 60 * 24 * 365 + 60 * 60 * 6)) }
  101.times { |i| set_time_constant(i, "SOLAR_YEAR", i * 31558150) }
end
