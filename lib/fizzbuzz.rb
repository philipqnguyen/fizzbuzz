require "CSV"

class Fizzbuzz # Original Fizzbuzz
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

  def advance(num, csv_path)
    store_csv_to_cache(csv_path)
    @counter = 1
    results = []
    while @counter <= num do
      matched_word.empty? ? results << @counter : results << matched_word
      @counter += 1
    end
    results
  end

  def store_csv_to_cache(csv_path)
    @cache = []
    CSV.foreach(csv_path) do |row| # ["fizz", "3"]
      @cache << [row[0], row[1].to_i]
    end
  end

  def matched_word
    words = []
    @cache.each do |word, value|
      words << word if @counter % value == 0
    end
    words.join
  end
end
