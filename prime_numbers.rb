def nth_prime(number)
  return nil if number <= 0

  nth_count = 0
  last_prime = 1
  counter = 2

  while nth_count < number
    if is_prime?(counter)
      last_prime = counter
      nth_count += 1
    end

    counter += 1
  end

  last_prime
end

private

def is_prime?(number)
  (2..number - 1).each do |i|
    return false if number % i == 0
  end

  return true
end
