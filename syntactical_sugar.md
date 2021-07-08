# Examples of Ruby's Syntactical Sugar #

- **Element assignment** methods are discreet methods defined for each object type, such as `String#[]=`, `Array#[]`, and `Hash#[]=`. The way we can disguise them as actual assignment statements is part of Ruby's **syntactical sugar**.

- **Incrementation** in Ruby is typically done using the `+=` method with is syntactical sugar for reassignment. 
```ruby
x = 10
x += 1 # => 11
# The above line is syntactical sugar for the line below...
x = x + 1
```