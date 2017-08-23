require 'prime'

def nth_prime(number)
  return nil if number < 0
  Prime.first(number).last
end
