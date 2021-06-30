> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby 
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name 
```
This code will output `Jim`, return `nil` and is an example of object passing by reference. 

The output we get is due to the `puts` method being called on line 7 and being passed local variable `name` as an argument. `name` is assigned to string object `"jim"` on line 5 and then passed as an argument to the `cap` mwethod that's being invoked on line 6. Within the body of the method definition of   cap  the `capitalize!` method is called on the method parameter `str`. The object reference passed as an argument to the `cap` method is assigned to `str` and because the `capitalize!` methid is destructive is mutates the the string object `jim` to `Jim`. 
Therefore when `puts` is called on line 7 it outputs `Jim` and returns `nil`.

> Time: 6m 27s

---

What is `arr`? Why? What concept does it demonstrate?

```ruby
a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr
```

Local variable `arr` is referencing array object `[[1, 5], 2]`. This is an example of element assignment. 

On lines 1 and 2 local variables `a` and `b` are assigned to array objects, `[1, 3]` and `[2]`. On line 3 these two object references are reassigned into a nested array, `[[1, 3], [2]]`. On line 6 the element at index 1 of the array object referenced by `a` is reassigned to integer object `5`. So on line 7 `arr` is referencing array object `[[1, 5], [2]]`.

> Time: 8m 36s

---
