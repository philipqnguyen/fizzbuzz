# FizzBuzz in Ruby

## Description

A simple implementation of FizzBuzz in Ruby. There are two versions:
- basic version which is predefined with "fizz" % 3 == 0 and "buzz" % 5 == 0
- advance version where it can take any inputs of words and numbers for a custom fizzbuzz experience via a CSV file.

## Usage

``` ruby
f = Fizzbuzz.new
f.basic(3)
#=> "fizz"
f.basic(5)
#=> "buzz"
f.basic(15)
#=> "fizzbuzz"
```


In the advance method, you can input a CSV file.

``` ruby
# fizz.csv
# fizz, 3
# buzz, 5
# siv, 7

..........................

f = Fizzbuzz.new
f.advance(8, "./fizz.csv")
#=> ["1", "2", "fizz", "4", "buzz", "fizz", "siv", "8", "fizz", "buzz", "11", "fizz", "13", "siv", "fizzbuzz"]
```
## Author

Philip Q Nguyen
