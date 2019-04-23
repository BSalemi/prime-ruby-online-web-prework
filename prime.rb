require 'benchmark'

def prime?(n)
  return false if !n.integer?
  return false if n < 2
  return true if n == 2
  m = (2..n-1)
  m_range = m.to_a
  m_range.each {|number| return false if n % number == 0}
  true
end

puts Benchmark.measure{prime?(146)}
