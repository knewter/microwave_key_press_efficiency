# Microwave Key Press Efficiency Calcualtor

Based on [RubyQuiz #118 - Micrrowave Numbers](http://www.rubyquiz.com/quiz118.html)

## Examples

```ruby
calc = MicrowaveKeyPressEfficiency::Calculator.new
```

99 seconds are the same as 1:39 but is it more effecient? Yes, because 99 is less
key presses than 139.

```ruby
calc.keys_to_press(99) # => 99
```

71 seconds are equal to 1:11 so here it's more effecient to just press 1 three
times instead of 7 and 1.

```ruby
calc.keys_to_press(71) # => 111
```
