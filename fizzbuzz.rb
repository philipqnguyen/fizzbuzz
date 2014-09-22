class Fizzbuzz
  def basic(num)
    if (num % 5 == 0) && (num % 3 == 0)
      return 'FizzBuzz'
    elsif num % 3 == 0
      return 'Fizz'
    elsif num % 5 == 0
      return 'Buzz'
    else
      return num
    end
  end

  def advance(num, hash={}) # Fizzbuzz.advance(80, :cool => 4, :dude => 9)
    results = []
    sorted_hash = hash.sort_by {|key, value| value}

    sorted_hash.each do |key, value|
      results << key.to_s if num % value == 0
    end

    results.empty? ? num : results.join("")
  end
end
