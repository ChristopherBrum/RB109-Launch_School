# Mutating Methods & Object Passing #

[Mutating vs Non-Mutating Methods](#mutating-vs-non-mutating-methods)

[Non-Mutating Methods](#non-mutating-methods)
  - [Immutable Objects](#immutable-objects)
  - [Variable Assignment](#variable-assignment)

[Mutating](#mutating)
  - [Indexed Assignment](#indexed-assignment)
  - [Concatenation](#concatenation) 

[Object Passing](#object-passing)
  - [Pass By Reference](#pass-by-reference)
  - [Pass By Value](#pass-by-value)
  - [What Ruby Uses](#what-ruby-uses)

[Mutating Methods and Object Passing Quiz](#mutating-methods-and-object-passing-quiz)

---

## Mutating vs Non-Mutating Methods ##
  Ruby differentiates methods that are mutating and methods that are non-mutating. A method that causes a permanent change or alteration to the object that calls it or to one of its arguments is a mutating method. A non-mutating method will not alter the calling object or its arguments.  

```ruby
  # non-mutating method
  a = 'word'
  b = a.upcase

  puts "#{a} is the object located at #{a.object_id}"
  puts "#{b} is the object located at #{b.object_id}"

  # outputs => word is the object located at 47097396514300
  # outputs => WORD is the object located at 47097396514280

  #mutating method

  a = 'word'
  b = a.capitalize!

  puts "#{a} is the object located at #{a.object_id}"
  puts "#{b} is the object located at #{b.object_id}"

  # outputs => WORD is the object located at 47179421372820
  # outputs => WORD is the object located at 47179421372820
```

### Non-Mutating Methods ###
  A non-mutating method is a method that does not permanently change the object the method is being called on or any of the methods arguments. Wehn consulting the documentation we will generally see a non-mutating method return a `new_obj`, as opposed to `self`. When dealing with immutable objects all methods are considered to be non-mutating. 

  ### Immutabe Objects ###
  Immutable means unchangeable — something that is fixed or permanent. As mentioned before, in ruby, numbers are amongst a few of the objects which are immutable. 

  ```ruby
    num = 10

    num
    >> 10

    num.object_id
    >> 21

    num += 22
    >> 32

    num.object_id
    >> 65
  ```

  ### Variable Assignment ###
  In Ruby variables assignments is always non-mutating because variables act as pointers. Meaning, when a variable is assigned to an object it acts as a pointer to that object in memory. If it is reassigned the variable then points itself to a new object, it does not mutate the original object. 

  ```ruby
    first_name = 'Chris'
    puts first_name.object_id     # => 47310987717960
    first_name = 'Adrienne'
    puts first_name.object_id     # => 47348319278360
  ```

  We can create copies of objects if we pass them into a method and reassign the object within. 

  ```ruby
    def reassignment_method(object)
      puts "1. #{object.object_id}"     # => '1. 47358242302820' (same object id as 'a')
      copy = object.upcase
      puts "2. #{copy.object_id}"       # => '2. 47358242302640' (different object id than 'a' because it was reassigned)
      copy
    end

    a = 'hello'                         

    puts a                              # => 'hello'
    puts reassignment_method(a)         # => 'HELLO'
    puts "3. #{a.object_id}"            # => '3. 47358242302820' (same object id as 'a' because it hasn't been mutated)
  ```

  Assignment operators such as +=, -=, *=, etc can also cause this link between variable and object to be broken.

  ```ruby
    def adds_an_s(string)
      string += 's'
      string
    end

    a = 'variable'
    b = adds_an_s(a)

    puts "The object referenced by `a` is '#{a}' located at #{a.object_id}"
    puts "The object referenced by `b` is '#{b}' located at #{b.object_id}"

    # => The object referenced by `a` is 'variable' located at 47297979436640
    # => The object referenced by `b` is 'variables' located at 47297979436600
  ``` 
  If a variable is being re-assigned and the expression to the right side of the assignment operator returns the same object then the object the variable was pointing to will be the same. The connection between variable and object it references is still broken by assignment, but because the object being re-assigned is the same object, the connection between the two is reformed by the re-assignment itself. 

  ```ruby
    # breaks the connection between the variable and the object it references, assigning a new object

    a = 'hello'
    a.object_id           # => 400
    a = a.capitalize      # => 'Hello' (returns a new string)
    a.object_id           # => 420

    # breaks the connection between the variable and object it references
    # reassigns the same object back to variable `a`

    a = 'hello'
    a.object_id           # => 440
    a = a.capitalize!     # => 'Hello' (returns `self` the same object modified)
    a.object_id           # => 440
  ```

### Mutating ###
  Mutating methods usually refer to the calling object being permanently changed in some way, refered to as `mutating with respect to it's caller`. A mutating method can also mutate the arguments passed into it, which is reffered to as `mutating with respect to it's arguments.
  
  There are many mutating methods built into Ruby that signify that they are mutating by including a bang (!) at the end of the method name. This is not true across the board though, so consult the docs to know which methods are mutating and which are non-mutating. 

  It is good practice to include a bang (!) at the end of any method you write that will mutate the caller or it's arguments. 

  ### Indexed Assignment ###
  Indexed assignment is mutating even though it is syntactically very similar to variable assignment, which is non-mutating. Indexed assigned is when a single element within a collection (string, array, hash) is re-assigned. The object created with re-assignment is a copy of a single element within the collection, therefore the reference for the collections a whole remains the same and is considered to have been mutated.

  ```ruby
    def indexed_assignment(collection)
      collection[1] = 0
      collection
    end

    a = [1, 2, 3]
    a.each { |element| puts element.object_id }
    # => 3
    # => 5
    # => 7

    b = indexed_assignment(a)
    p a
    # => [1, 0 3]
    p a.object_id
    # => 480
    p b
    # => [1, 0 3]
    p b.object_id
    # => 480
    a.each { |element| puts element.object_id }
    # => 3
    # => 1      (not that this object id has changed)
    # => 7
  ```

  ### Concatenation ###
    The shovel concatenation operator (<<) functions similarly to the re-assignment operator (+=) but is in fact mutating, where re-assignment is non-mutating. 

    ```ruby
      # concatenation is mutating
      a = 'abc'
      puts a.object_id    # => 500
      a << 'def'
      puts a              # => 'abcdef'
      puts a.object_id    # => 500

      # reassignment is not
      b = 'abc'
      puts b.object_id    # => 520
      b += 'def'
      puts b              # => 'abcdef'
      puts b.object_id    # => 540
    ```
---
## Object Passing ##
  Object passing is how a programming language passe an object into a method. Most commonly an object will be passed as a 'reference' or a 'pointer' of the actual object in memory, or as a 'value', which is a copy of the actual object in memory.

  ### Pass By Reference ### 
  Pass by reference passes a reference of an object in memory around. When you are passing an argument to a method you are establishing an alias between the argument and the original object, meaning, both the alias and the object refer to the same location in memory. So if you mutate the argument, you also mutate the object.

  **Pass by reference**: variables act as pointers, and contain "references" to the actual object.

  - 'Object' is a string literal object

  - a = 'Object' we assign the string literal to the variable a

  - a now contains a reference to 'Object', which can be revealed by calling the method object_id

  - When we pass a into a method, the reference to that original object in memory is passed in

  - This can be demonstrated via a mutating method, which affects the original object

  ```ruby
    def change_object(string)
      string.upcase!
    end

    a = 'Object'
    puts a                  # => 'Object'
    change_object(a)
    puts a                  # => 'OBJECT'
  ```
  
  ### Pass By Value ###
  Pass by value creates a copy of an object, and that copy is what gets passd around. Because it is only a copy it is impossible to change the original object, and any attempt to change the original object will result in changing the copy. 

  **Pass by value**: when objects are passed to a method, only a copy of the original object (or value) will be passed to the method. This means that any manipulations performed on the object within the method will have no effect on the original object.

  - Ruby is not pass by value, but sometimes it can act like it is, when a copy is generated within a method and reassigned to the variable in question.

  - This breaks the link between the variable and the object it references

  - Below we can see that a copy is made when we pass a into the method (because of variable reassignment). The original object referenced by a, therefore, is not modified by the method

  ```ruby
    def change_object(string)
      string += "!"
    end

    a = "Value"
    puts a                      # => "Value"
    puts change_object(a)       # => "Value!"
    puts a                      # => "Value"
  ```

  ### What Ruby Uses ###
  When working with mutable methods, or immutable objetcs, Ruby acts like a pass by value language. When working with non-mutable methods Ruby acts like a pass by reference language. 

  Ruby is in fact a blend of pass by reference and pass by value, that we refer to as pass by reference value. It works like a pass by reference language but it passes a copy of that reference when passing objects into methods. 

  Understanding that variables act as pointers is key to understanding pass by refernce value. Variables contain a reference to the associated object in memory, and just because we pass that reference into a method doesn't mean the object will be automatically mutated. Non-mutating operations, like re-assignment, can change the pointer by making the variable point to a new object in memory. Immutable objects, like integers, cannot be modified and will create a new object that the variable will reference after the operation has finished.  

  A method acting as pass by reference or pass by value (mutating vs. non-mutating) will be determined by how it is defined. Does the method utilized mutating methods that alter its arguments or caller destructiely? Or does it use methods that return a new object so references passed into it do not change? 

---
## Mutating Methods and Object Passing Quiz ##

<details>
  <summary>What are mutating methods and non-mutating methods?</summary>
  
    Ruby differentiates methods that are mutating and methods that are non-mutating. A method that causes a permanent change or alteration to the object that calls it or to one of its arguments is a mutating method. A non-mutating method will not alter the calling object or its arguments.  
</details>
<details>
  <summary>What is an immutable object?</summary>

    An immutable object is any object that cannot be altered or changed in any way. In Ruby integer objects are an example of immutabvle objects. 
</details>
<details>
  <summary>What does the documentation generally say a non-mutating method will return, versus what a mutating method will return?</summary>

    In the ruby-docs a non-mutating object will generally return a `new_obj`, where a mutating object will genereally return `self`.
</details>
<details>
  <summary>Is variable assignment mutating? Why or why not?</summary>

    In Ruby variables assignments is always non-mutating because variables act as pointers. Meaning when a variable is assigned to an object acts as a pointer to that object in memory. If it is reassigned the variable then points itself to a new object, it does not mutate the original object. 
</details>
<details>
  <summary>What is an instance where assignment can return the same object that it is re-assigning?</summary>

    If a variable is being re-assigned and the expression to the right side of the assignment operator returns the same object then the object the variable was pointing to will be the same. The connection between variable and object it references is still broken by assignment, but because the object being re-assigned is the same object, the connection between the two is reformed by the re-assignment itself. 
</details>
<details>
  <summary>What is actually 'mutated' with a mutating method?</summary>

    Mutating methods usually refer to the calling object being permanently changed in some way, refered to as `mutating with respect to it's caller`. A mutating method can also mutate the arguments passed into it, which is reffered to as `mutating with respect to it's arguments.
</details>
<details>
  <summary>Is there any way to know if a method is mutating or non-mutating?</summary>

    There are many mutating methods built into Ruby that signify that they are mutating by including a bang (!) at the end of the method name. This is not true across the board though, so consult the docs to know which methods are mutating and which are non-mutating. 
</details>
<details>
  <summary>How can you indicate whether a method is mutating or not when you write your own methods?</summary>
    
    It is good practice to include a bang (!) at the end of any method you write that will mutate the caller or it's arguments. 
</details>
<details>
  <summary>What is indexed assignment and is it mutating or non-mutating?</summary>

    Indexed assignment is mutating even though it is syntactically very similar to variable assignment, which is non-mutating. Indexed assigned is when a single element within a collection (string, array, hash) is re-assigned. The object created with re-assignment is a copy of a single element within the collection, therefore the reference for the collections a whole remains the same and is considered to have been mutated.
</details>
<details>
  <summary>What is the shovel concatenation operator and is it mutating or non-mutating?</summary>

    The shovel concatenation operator (<<) functions similarly to the re-assignment operator (+=) but is in fact mutating, where re-assignment is non-mutating. 
</details>
<details>
  <summary>What is object passing?</summary>

    Object passing is how a programming language passe an object into a method. Most commonly an object will be passed as a 'reference' or a 'pointer' of the actual object in memory, or as a 'value', which is a copy of the actual object in memory.
</details>
<details>
  <summary>What objects are we referring to in object passing?</summary>

    When referring to object passing we most commonly are referring to the object the method is being called upon, but we can also be referring to the objects passed in as arguments, as well as the return values of amethod passed back to the caller. 
</details>
<details>
  <summary>How does pass by reference work?</summary>

    Pass by reference passes a reference of an object in memory around. When you are passing an argument to a method you are establioching an alias   between the argument and the original object, meaning, both the alias and the object refer to the same location in memory. So if you mutate the argument, you also mutate the object. 
</details>
<details>
  <summary>How does pass by value work?</summary>

    Pass by value creates a copy of an object, and that copy is what gets passd around. Because it is only a copy it is impossible to change the original object, and any attempt to change the original object will result in changing the copy. 
</details>
<details>
  <summary>How does Ruby pass objects?</summary>

    When working with mutable methods, or immutable objetcs, Ruby acts like a pass by value language. When working with non-mutable methods Ruby acts like a pass by reference language. 

    Ruby is in fact a blend of pass by reference and pass by value, that we refer to as pass by reference value. It works like a pass by reference language but it passes a copy of that reference when passing objects into methods. 

    Understanding that variables act as pointers is key to understanding pass by refernce value. Variables contain a reference to the associated object in memory, and just because we pass that reference into a method doesn't mean the object will be automatically mutated. Non-mutating operations, like re-assignment, can change the pointer by making the variable point to a new object in memory. Immutable objects, like integers, cannot be modified and will create a new object that the variable will reference after the operation has finished.  

    A method acting as pass by reference or pass by value (mutating vs. non-mutating) will be determined by how it is defined. Does the method utilized mutating methods that alter its arguments or caller destructiely? Or does it use methods that return a new object so references passed into it do not change? 
</details>

