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

  def advance(num, csv_path) # Fizzbuzz.advance(80, :cool => 4, :dude => 9)
    counter = 1
    word_list = []
    while counter <= num do
      match = false
      word = []
      CSV.foreach(csv_path) do |row| # ["fizz", "3"]
        if counter % row[1].to_i == 0
          word << row[0]
          match = true
        end
      end
      word << counter if match == false
      word_list << word.join("")
      counter += 1
    end
    word_list
  end
end
