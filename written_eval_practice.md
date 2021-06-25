What does the following code return? What does it output? Why? What concept does it demonstrate?

What is `a`? What if we called `map!` instead of `map`?

This code will output nothing, but return `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`, and is an example of object passing. 

On line 5 we have assigned variable `a` to the array object `['a', 'b', 'c']` and then passed that as an argument to the method `test` on line 5. On line 1-3 we define the method `test`, it takes one argument and calls the `map` method on it. Within the block passed to the method as an argument we have one blocked parameter named `letter`. Each iteration of the `map` method interpolates `letter` into a string and returns that string interpolation to the `map` method. The `map` method pushes the return value of the block to a new array object and then returns that array object. This results in the return value of the method invocation of `test` on line 6 being `["I like the letter: a", "I like the letter: b", "I like the letter: c"]`.