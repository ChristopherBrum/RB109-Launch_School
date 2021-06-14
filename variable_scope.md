# **Variable Scope** #

## What is a _**Variable**_? ##

A variable is a container that stores information that can be referenced and manipulated within a computer program. A variable also provides a way of labeling this data in a descriptive way so that the program can be understood more clearly by ourselves and others reading our code. 

>_Their sole purpose is to label and store data in memory. This data can then be used throughout your program._

## What is _**Scope**_? ##

A variable's scope determines where in a program that variable is availble for use. It's scope is determined by where it is **initialized** or created. Scope in Ruby is defined by a block, which is a piece of code following a method invocation, and usually defined by either curly braces `{}` or `do/end`. Note: not all `do/end` demarcate a block!

### Inner & Outer Scope ###



>_Inner scope can access variables initialized in an outer scope, but not vice versa._

```ruby
# scope.rb
num_1 = 9         # num_1 is initialized outside of a block in the main object (outer scope)

1.times do |n|    # method invocation with a do/end block
  num_1 = 4       # num_1 reassigned within the block
  num_2 = 5       # num_2 is initialized within the block (inner scope)
end

puts num_1        # outputs => 4
puts num_2        # outputs => undefined local variable or method `num_2' for main:Object (NameError)
```

The example above illustrates inner and outer variable scope. The local variable `num_1` is initialized in the main object (outside of a block), local variable `num_2` is intialized within the block passed in as an argument to the `times` method. In this circumstance `num_1` has an _outer scope_ and `num_2` has an _inner scope_ because of where they were initialized. When we invoke the `puts` method and pass in local variables `num_1` and `num_2`, `4` is outputted followed by an error of 

>`undefined local variable or method num_2' for main:Object (NameError)`.

`4` is outputted when we `puts num_1` because `num_1` was intitialized and assigned the value of `9` on the first line giving it an out scope, then within the block of the `times` method it is reassigned to the value of `4`, because it has outer scope `num_1` is available to pass to the puts method. `num_2` is initialized within the block of the `times` method and therefore has an inner scope, so it is _not_ available to be passed to the `puts` method on the last line, and throws an error. 

>_The key distinguishing factor for deciding whether code delimited by `{}` or `do/end` is considered a block (and thereby creates a new scope for variables), is seeing if the `{}` or `do/end` immediately follows a method invocation._

```ruby
arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # is it accessible here? yes, because the do/end of the for loop is not a block and not scoped as a block
```

`a` is accessible because `for` is not a method but a part of Ruby syntax, therefore the `do/end` following the `for` keyword does not deliniate a block or an inner scope.

### Local & Global Scope ###


## Variable Scope Quiz ##

<details>
  <summary>What is a variable?</summary>
    A variable is essentially a container for a piece of information represented by Ruby Objects. Variables act like pointers that contain references to the objects they're pointing at in memory. 
</details>
<details>
  <summary>What is scope?</summary>
    Scope is what determines wherea variable can accessed within a program. It refers to which parts of the code consider the variable to be 'defined', essentially, where the object the variable is referencing can be pulled up and manipulated. 
</details>
<details>
  <summary>What's the difference between local and global scope?</summary>
    Globally scoped variables are accessible anywhere within the program. In Ruby, only <strong>global</strong> variables and <strong>constants</strong> are globally scoped. Local variable scope is determined by where in the program they are <i>initialized</i>. 
</details>
<details>
  <summary>How do you assign a value to a variable?</summary>
    Variables are assigned to objects using the <strong>assignment operator</strong> ( = ).
</details>
<details>
  <summary>What dictates a local variables scope?</summary>
    A local variables scope is determined by where within a program it is <i>initialized</i>.
</details>
<details>
  <summary>What type of scope can be accessed anywhere with a program?</summary>
    <strong>Global variables</strong> and <strong>constants</strong> are globally scope and can therefore be accessed anywhere within the program regardless of where they are initialized. That being said, it is recommended to still follow Ruby standards and best practices when working with global variables and constants.
</details>
<details>
  <summary>What will happen if you try to access a local variable out of the bounds of its scope and what will its value be?</summary>
    When trying to access a variable out of the bounds of its scope the program will throw a NameError and return undefined.
</details>
<details>
  <summary>What determines if a variable has inner or outer scope?</summary>
    The scope of any given variable is determined by where that variable is initialized. Local variable scope is no different. A local variable defined within a method definition, within a block, or within the main object must obey the scope boundaries of where they were initialized. 
</details>
<details>
  <summary>What is a block?</summary>
    A block is code contained between a do/end or { } that comes after a method invocation. A do/end or { } that does not come after a method invocation is not considered a block and does not create a block scope.
</details>