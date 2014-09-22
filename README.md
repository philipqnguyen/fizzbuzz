# FizzBuzz in Ruby

## Description

A simple implementation of FizzBuzz in Ruby. There are two versions:
- basic version which is predefined with "fizz" % 3 == 0 and "buzz" % 5 == 0
- advance version where it can take any inputs of words and numbers for a custom fizzbuzz experience.

## Usage

``` ruby
f = Fizzbuzz.new
f.basic(3)
#=> "fizz"
f.basic(5)
#=> "buzz"
f.basic(15)
#=> "fizzbuzz"

f.advance(8, cool: 8, dude: 10)
#=> "cool"
f.advance(80, super: 8, man: 10)
#=> "superman"
```
## Author

Philip Q Nguyen
