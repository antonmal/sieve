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
