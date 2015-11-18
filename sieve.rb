class Sieve
  def initialize(range)
    @range = range
  end

  def primes
    numbers = (0..@range).to_a
    numbers[0], numbers[1] = nil
    (2..Math.sqrt(@range)).each do |i|
      ((i*i)..@range).step(i).each { |n| numbers[n] = nil } if numbers[i]
    end
    numbers.compact
  end
end

# Optimized for performance by:

#  - reducing the range / number of steps in both cycles dramatically
#  - using 'numbers[n] = nil' and 'numbers.compact'
#      instead of 'numbers.delete()'

# 'numbers[0], numbers[1] = nil' help simplify the rest of the code a lot
