# Variable Scope #

### What is a Variable? ###


A variable is a container that stores information that can be referenced and manipulated within a computer program. A variable also provides a way of labeling this data in a descriptive way so that the program can be understood more clearly by ourselves and others reading our code. 


>_Their sole purpose is to label and store data in memory. This data can then be used throughout your program._


### Scope ###


A variable's scope determines where in a program that variable is availble for use. It's scope is determined by where it is **initialized** or created. Scope in Ruby is defined by a block, which is a piece of code following a method invocation, and usually defined by either curly braces `{}` or `do/end`. Note: not all `do/end` demarcate a block!


>_Inner scope can access variables initialized in an outer scope, but not vice versa._


```ruby
# scope.rb
a = 5

3.times do |n|    # method invocation with a block
  a = 3
  b = 5           # b is initialized in the inner scope
end

puts a
puts b            # is b accessible here, in the outer scope?
```


The example above illustrates variable scope. The local variable `a` is initialized outside of a block, local variable `b` is intialized within the block passed in as an argument to the `#times` method. In this circumstance `a` has an _outer scope_ and `b` has an _inner scope_ because of where they were initialized. When we invoke the puts method and pass in the local variables `a` and `b`, `3` is outputted followed by an error of `undefined local vaiable 'b'`. `3` is outputted when we `puts a` because `a` was intitialized and assigned the value of `5` on the first line giving it an out scope, then within the block of the `#times` method it is reassigned to the value of `3`, because it has outer scope `a` is available to pass to the puts method. `b` is initialized within the block of the #times method and therefore has an inner scope, so it is _not_ available to be passed to the `#puts` method on the last line and throws an error. 


>_The key distinguishing factor for deciding whether code delimited by {} or do/end is considered a block (and thereby creates a new scope for variables), is seeing if the {} or do/end immediately follows a method invocation._


```ruby
arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # is it accessible here?
```


`a` is accessible because `for` is not a method but a part of Ruby syntax, therefore the `do/end` following the `for` keyword does not deliniate a block or an inner scope.

