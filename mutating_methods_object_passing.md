# Mutating Methods & Object Passing #

mutating vs non-mutating
non-mutating
  variable assignment
mutating
  indexed assignment
  concatenation
object passing
  objects being passed
    arguments
    callers
    return value
  pass by reference 
  pass by value


### Mutating Methods & Object Passing Quiz ###

<details>
  <summary>What are mutating methods and non-mutating methods?</summary>
  
    Ruby differenciates methods that are mutating and methods that are non-mutating. A method that causes a permanent change or alteration to the object that calls it or to one of its arguments is a mutating method. A non-mutating method will not alter the calling object or its arguments.  
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

    There are many mutatinig methods built into Ruby that signify that they are mutating by including a bang (!) at the end of the method name. This is not true across the board though, so consult the docs to know which methods are mutating and which are non-mutating. 
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

