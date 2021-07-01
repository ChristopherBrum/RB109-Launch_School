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

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1 
puts arr2
```

This code will output the string objects `a`, `b`, `c`, `A`, `B`, and `C` on separate lines and return `nil`. This is an example of a shallow copy in Ruby.

The array object assigned to local variable `arr1` on line 1 has the `dup` method called on it and the return value of that method is assigned to local variable `arr2`, which is the a new object   with the same element objects within it. So when the `map!` method is called on  `arr2`, which is destructive, the method iterates over each element within the array and the `upcase` method is called on each element returning the transformed array object `['A', 'B', 'C']`. But because the `dup` method created a shallow copy of the obje3ct referenced by `arr` only that copy has been mutated and not the object referneced by `arr1`.

> Time: 7m 4s

---

> What values do `s` and `t` have? Why?

```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)
```

Local variable `s` and `t` are both referencing string object `HELLO!`. This is an example of object pasing in ruby, specifically object passing by reference. 

On line 7 the object referenced by local variable `s` is passed as an argument to the `fix` method (line 8), and the return value is assigned to local variable `t`. The object reference passed into `fix` as a argument is then assigned to the method parameter `value` within the `fix` method definition. The `upcase!` method is called on `value`, which is destructive, so the object referenced by `value` and `s` is  mutated to string object `HELLO`. On the next line the `concat` method is then called on `value` and passed string object `"!"` as an argument. Being a destructive method the object referenced by `value` and `s` are again mutated to string object `HELLO!`. The return value of `fix(s)` is assigned to `t` and both `t` and `s` are referencing `HELLO!`

> Time: 7m 14s

---

> What values do `s` and `t` have? Why?

```ruby
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
```

Local variables `s` is referencing string object `hello` and local variable `t` is referencing string object `HELLO!`. This is an example of object passing by value in Ruby. 

On line 6 string object `hello` is assigned to local variable `s`. The object referenced by `s` is then passed into the `fix` method as an argument, and the return value of `fix` is assigned to `t`. The object passed into `fix` is assigned to the method parameter `value` within the method definition for use as a local variable. On line 2 `value` is reassigned to the return value of the `upcase` method being called on `value`, which returns a new string object `HELLO`. The `concat` method is called on `value`, which is destructive, but since the reassignment on the line above has `value` is no longer pointing at the same object as it was when it was passed in to the method definition. `concat` returns `HELLO!` and that is retruned from the `fix` method and assigned to `t`.

> Time: 7m 54s

---

> What values do `s` and `t` have? Why?

```ruby
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
```

> Time:

---

Local variable `s` is referencing the string object `helloxyz` and local variable `t` is referncing the string object `HELLOXYZ!`. This is an example of object passing in Ruby. 

`s` is assigned to string value `hello` on line 7 and then passed to the `fix` method as an argument on line 8, and the return value of the `fix` method is assigned to `t`. Within the `fix` method block the object referenced by `s` is assigned to method paramter `value`. `value` has the shovel operator method (`<<`) called on it with `'xyz'` passed in as an argument. Because `<<` is destructive it mutates the object referenced by `value` and `s`. On the next line `value` is reassigned to the return value of the `upcase` method being called on `value` and on the following line the `concat` method is called on `value` with `'!'` passed in as argument, returning `HELLOXYZ!` from the block and the method, ultimately assigning `HELLOXYZ!` to `t`. 

> Time: 8m 2s

---

> What values do `s` and `t` have? Why?

```ruby
def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
t = fix(s)
```

Local variable `s` and `t` are both referencing string object `HELLO!`. This is an example of object passing by reference in Ruby. 

`s` is assigned to string value `hello` on line 7 and then passed to the `fix` method as an argument on line 8, and the return value of the `fix` method is assigned to `t`. Within the `fix` method block the object referenced by `s` is assigned to method paramter `value`. On line 2 `value` is reassigned to the return value of the `upcase!` method being called on `value`, but being a destructive method `upcase!` mutates the object referenced by `value` and `s` to string object `HELLO`. On the next line the `concat` method is called on `value` and passed in `'!'` as an argument. `concat` method is also destructive so once again the object referenced by `value` and `s` is mutated, now to string object `HELLO!`. This is the value returned by the `fix` method and so now `s` and `t` are both referencing string object `HELLO!`.

> Time: 5m 23s

---

> What values do `s` and `t` have? Why?


```ruby
def fix(value)
 value[1] = 'x'
 value 
end

s = 'abc'
t = fix(s)
```

Local variables `s` and `t` are both referencing string object `'axc'` and this is anb example of object passing and element assignment. 

`s` is assigned to string value `abc` on line 7 and then passed to the `fix` method as an argument on line 8, and the return value of the `fix` method is assigned to `t`. Within the `fix` method block the object referenced by `s` is assigned to method paramter `value`. On line 2 `value[1]` is referencing the element at index `1` of the string object referenced by `value`. It is then reassigning that element to string object `x`, which is destructive, so now both `value` and `s` are both referencing string object `axc`. This is value the `fix` method returns so now `s` and `t` are referencing `axc`.

> Time: 4m 55s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def a_method(string)
  string << ' world'
end

a = 'hello'
a_method(a)
p a
```

This code will output `hello world` and `return` `hello world`. This is an example object passing by reference. 

String object `hello` is assigned to local variable `a` on line 5, and then passed to the `a_method` method as an argument. Within the method definition the object referenced by `a` is assigned to block parameter  `string`. `string` then has the shovel operator method `<<` called upon it with `world` passed in as an argument. Being destructive the `<<` method mutates the object referenced by `string` and `a` to string object `hello world`. This is returned by the `a_method` method. On the last line the `p` method outputs and returns the string object `hello world`. 

> Time: 4m 55s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
num = 3

num = 2 * num
```

This code will output nothing and return `6`. This is an example of  object passing by value.

The local variable `num` is assigned to integer object `6` on line 1. On line 3 `num` is then reassigned to the returnb value of the integer `2` multiplied by the integer object referenced by `num`, in this case `3`. This reults in a return value of `6`, which is the integer object `num` is reassigned to. 

> Time: 3m 48s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = %w(a b c)
a[1] = '-'
p a
```

This code will output and return array object `['a', '-', 'b']`. This is an example of element assignment in a collection. 

Local variable `a` is assigned to array object `['a', 'b', 'c']` on line 1. On line 2 the element assignment method (`[]=`) is used to reference the element at index 1 of the array object referenced by `a` and then assign string object `'-'` to that index position. Thsi does not mutate the array just the element within the array being reassigned, so now `a` is referencing array object `['a', '-', 'c']`, which is what is passed to the `p` method as an argument on the last line. 

> 6m 5s