# **Variable Scope** #

## What is a _**Variable**_? ##

A variable is a container that stores information that can be referenced and manipulated within a computer program. A variable also provides a way of labeling this data in a descriptive way so that the program can be understood more clearly by ourselves and others reading our code. 

>_Their sole purpose is to label and store data in memory. This data can then be used throughout your program._

## What is _**Scope**_? ##

A variable's scope determines where in a program that variable is availble for use. It's scope is determined by where it is **initialized** or created. Scope in Ruby is defined by a block, which is a piece of code following a method invocation, and usually defined by either curly braces `{}` or `do/end`. Note: not all `do/end` demarcate a block!

### Inner & Outer Scope ###



>_Inner scope can access variables initialized in an outer scope, but not vice versa._

```ruby
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
  a = 5          # a is initialized here
end

puts a           # is it accessible here? yes, because the do/end of the for loop is not a block and not scoped as a block
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
    Globally scoped variables are accessible anywhere within the program. In Ruby, only global variables and constants are globally scoped. Local variable scope is determined by where in the program they are initialized. 

</details>
<details>
  <summary>How do you assign a value to a variable?</summary>
    Variables are assigned to objects using the assignment operator ( = ).

</details>
<details>
  <summary>What dictates a local variables scope?</summary>
    A local variables scope is determined by where within a program it is initialized.

</details>
<details>
  <summary>What type of scope can be accessed anywhere with a program?</summary>
    Global variables and constants are globally scope and can therefore be accessed anywhere within the program regardless of where they are initialized. That being said, it is recommended to still follow Ruby standards and best practices when working with global variables and constants.

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
<details>
  <summary>How does a block effect a local variables scope?</summary>
    When a method is invoked and passed do...end or curly braces { } as an argument it creates a block. The block itself creates an inner scope that will limit any local variables initialized within the block to the inner scope of the block. Local variables with an inner scope cannot be accessed outside of the scope they were initialized within. 

    If a 2nd block is created within the 1st block, the 1st block scope will be outer scoped to the 2nd block. Therefore local variables initialized in the 2nd block(inner scope) WILL NOT be accessible within the 1st block(outer scope), but local variables initialized within the 1st block(outer scope) WILL be accessible within the 2nd block(inner scope).

</details>
<details>
  <summary>What are inner and outer scope and how do they differ?</summary>
    A local variable initialized within the block will have an inner scope and can be accessed and manipulated within the inner scope of the block, but will not be accessible outside of the block.

    A variable initialized outside of the block will have an outer scope and call accessed outside of a block in the main object as well as within blocks inner scope.

    Inner scoped variables are only accessible within the inner scope they were initialized in but outer scoped variables can be accessed within the scope they were initialized in as well as any inner scopes created within the main object.

</details>
<details>
  <summary>Do all do...end and curly braces { } create a new block? Why or why not?</summary>
    Not every do...end or curly braces { } define a block. For a block to be created the do...end or curly braces { } need to follow a method invocation. Ruby contains some built in syntax that take a do...end or curly braces { } but are not methods. In these circumstances a new block is not created, nor a new scope.

</details>
<details>
  <summary>Can variables defined within 2 separate blocks be accessed in the other block?</summary>
    Local variables initialized in a block within the main object will be scoped to that specific block. for example, local variables initialized in block a within the main object will not be accessible within block b, which is also a block within the main object. 

</details>
<details>
  <summary>How do nested blocks effect scope?</summary>
    When you begin nesting blocks within blocks you created nested scoping. Instead of saying inner or outer scope, we would say 1st level scope, 2nd level scope, 3rd level scope, etc. 1st level scope will be the outermost scope and each scope after that would represent an inner scope one level deeper than the last. 

    A local variable initialized in the 1st level scope would be accessible by every scope within it. A local variable initialized in the 2nd level scope would not be accessible in the 1st level scope but would be in the 2nd level scope, 3rd level scope, and so on. A local variable initialized in the 3rd level scope would not be accessible in the 1st or 2nd level scope but would be in the 3rd level scope, 4th level scope, 5th level scope. And so on...

</details>
<details>
  <summary>What does variable shadowing mean?</summary>
    
    Variable shadowing occurs when a local variable outside of a block shares the same name as a block parameter. The local variable initialized outside of the block will not be accessible within the block because the block parameter of the same name 'overshadows' it. This means you can not access, re-assign or manipulate the object the outer variable is referencing.

</details>
<details>
  <summary>What can we do to avoid variable shadowing?</summary>
    
    If you are specific and descriptive with the naming of your variables you should not put yourself in a position where you experience variable shadowing. 
    
</details>
<details>
  <summary>How does the scope of method definition differ from block scoping?</summary>
    The scope of a method definition is independent and self-contained. Any local variable accessible within a method definitions scope is either initialized within the method definition, which would make it inaccessible outside of the method definition, or passed into the method definition as an argument.]

</details>
<details>
  <summary>Can you alter a variables value when it's passed into a method definition as an argument?</summary>
    Local variables passed into the method as arguments cannot be altered from within the method, unless they represent a collection object, whose elements can be changed.   

</details>
<details>
  <summary>How does nested scoping work within a method definition?</summary>
    Nested scoping within a method definition would act as it normally would, meaning levels of nested scoping would be referred to by their nesting level, 1st level scope, 2nd level scope, 3rd level scope, and so on. This scoping hierarchy would be contained within the method definition and no local variables within the method, regardless of nesting level, would be accessible outside of the method. 

</details>
