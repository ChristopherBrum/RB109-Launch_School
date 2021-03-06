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

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
experiment = [
  ["???", "!!!", "?!?!"], ["select_me!", "please_select_me?", "how about_me?"], ["what does it mean to be a string?", 'true']]
  
experiment2 = experiment.each do |array|
  array.map { |string| string.include?('?') }
end

p experiment
p experiment2
```

This code will output (twice), return (once) the same array object 

`[["???", "!!!", "?!?!"], ["select_me!", "please_select_me?", "how about_me?"], ["what does it mean to be a string?", 'true']]`

and is an example of how the `each` method returns the calling object after execution. 

Local variable `experiment` is assigned to the array object 

`[["???", "!!!", "?!?!"], ["select_me!", "please_select_me?", "how about_me?"], ["what does it mean to be a string?", 'true']]`

Then the `each` method is called on the object referenced by `experiment`. Because the `each` method retruns the object that the method was called on it returns the above array object and that is assigned to local variable `experiment2`. The `p` method is called on the last 2 lines which where we get out output and return from. 



> Time: 

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def example(str)
  loop do
    i = 3
    puts str 
    i -= 1
    break if i == 0
  end
end

p example("hello")
```

This code will output the string object `'hello'` an infinite amount of times and will not be allowed to `return`. This is an example of an infinite loop as a well as local variable scope. 

The `p` method is called on the last line and passed the return value of the `example` method being passed in as an argument. Within the method body a `loop` method is invoked and a `do...end` block is passed in as an argument. Because the counter (local variable `i`), that would theoretically meet the condition to break out of this `loop` method, is initialized within the `loop` method block on each iteration, it is continually erased at the end of each iteration. Therefore the `break` condition will never be met. 

> Time: 

---

> 
```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```

This code will output `'bob'`, `'kim'`, `'jim'` on separate lines, return `nil`, and is an example of object passing as a reference. 

Local variable `names` is assigned to array object `['bob', 'kim']` on line 5 and is passed as an argument to the `add_name` method, along with a second argument `'jim'`, at invocation on line 6. Within the method block we are reassigning the block parameter `arr` to the value of `arr` with the shovel method `<<` being called on it and `'jim'` passed in as an argument. The shovel method is destructive so `arr` and `names`, outside of the method definition are both referencing the same array object now, `['bob', 'kim', 'jim']` . On the last line the method `puts` is invoked and passed `names` as an argument, which is where the output and return come from. 

> Time: 6m 54s

---

> What does the following code return? What does it output? Why? What concept does it 	demonstrate?

```ruby
array = [1, 2, 3, 4, 5]

array.select do |num|
   puts num if num.odd?
end
```

This code will output integers object `1`, `3`, and `5` on separate lines and return an empty array. This is an example of selection iteration using the `select` method. 

The array object that the `select` method is called on passes each element to the block of the `select` map one iteration at a time. Within the block there is a conditional startement that will either execute the `puts` method or return the boolean object `false ` from the `odd?` method. Because the `select` method evaluates the block passed to it as falsy or truthy, every iteration in this situation will result in `nil` or `false`. Therefore no elements from calling object are passed to the new array object returned by the select method, resulting in an empty array being returned. The `puts` method does output each integer that the `odd?` method returns `true` for, and this is where we get out `1`, `3`, `5` outputs from. 

> Time: 6m 52s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }
```
This code will output nothing and return an array object of odd integers `[1, 3, 5, 7, 9]`. This is an example of the `select` method performing object selection. 

Local variable `arr` is assigned to an array of the integers 1-10. the `select` method is called on `arr` and the block passed to `select` will evaluate to truthy or falsy. When the block evalutaes to truthy then the element at passed to the block for that iteration will be pushed to a new array that the `select` method will return. In this case each time the `odd?` method evaluates to true when called on the element passed in, it will result in a truthy return from the block. Therefore the `select` method returns an array object off all odd integers between 1 and 9.

> Time: 5m 36s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
end
p new_array
```

This code will output and return the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`. this is an example of the selection through iteration. 

The `select` method evaluates the return value of the block passed to it to truthy or falsy. In this case, each iteration of the block will evaluate to true because the array object that `select` is called on consists of integers and the code within the block is checking to see if it can add 1 to each element in the object. Each time the block evaluates to true the object passed in to the block will be pushed to a new array that will be returned by the `select` method. The `p` method will print out this new array object and return it as well.

> Time: 5m 58s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array

```

This code will output the integers 1-10, an empty array `[]` on separate lines and return an empty array. This is an exmaple of the `select` method using selective iteration to return a new array object. 

The array object assigned top `arr` has the `select` method called on it on line 3. The last line of code within the block returns `nil` every instance due to the `puts` method being called with an individual element of `arr` passed in as an argument. The object referenced by this array element will be out and will return `nil` causing the block to evaluate to falsy and ultimately resulting in the `select` method retuning an empty array object. The `p` method is invoked and the ``empty array assigned to local variable `new`array` passed in, outputting and returning `[]`.

> Time: 7m 43s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array
```

This code will output array object `[false, true, false, false, true]` and return the same thing. This is an example of transforming a collection using the `map` method. 

The array opf string on line is assigned to local variable `words` and then has the `map` method called on it on line 3, with the return value being assigned to local variable `new_array`. The `map` method returns a new array object with the same number of elements as the calling object, the value being the return value of the block passed to it as an argument. In this case each element pased to the block has the `start_with?` method called on it and `'t'` passed in as an argument. This will return a boolean object and this boolean object is what is pushed to a new array object returned by the `map` method. The last line has the `p` method called with `new_array` passed in as an argument resulting in our output and return values. 

> Time: 5m 45s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }
```

This code ouputs the integers 1 through 10 on separate lines and will return an array object with the integers 1 through 10 within it. This is an example of collection iteration using the `each` method. 

The array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` is assigned to local variable `arr` and then has the `each` method called on it. The each method has a block passed to it as an argument but doiesn't care about the return value of the block. Within the block the `puts` method is called on the element passed in from the calling object, which outputs the integer object `1-10` on individual lines. 1each1 always returns the object it was called on so it returns `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.

Time: 4m 8s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n| 
            n + 1
            end
p incremented
```

This code will output ands return array object `[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]` and is an example of transformational iteration using the `map` method. 

Local variable `arr` is assigned to an array object with the integers 1-10 in it. `arr` then has `map` called on it and the return value being assigned to local variable `incremented`. A block is passed to `map` and map will return a new array object with the same number of elements, whose values will be what the blocks return value is upon each iteration. In this case each return  value is the integer incremented by 1, resuklting in a new array object being returned by `map` and assigned to `incremented`. The `p` method is called on the last line and the object referenced by `incremented` is passed in as an argument, resulting in the output and reutrn values stated above.

> Time: 6m 13s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
end
p new_array
```

This code will output and return an array object with `false` one time and `true` nine times. This is an example of transformational iteration with the `map` method. 

The array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` is assigned to local variable `arr` on line one. Then `map` is called on the object referenced by `arr` and the return value is saved to local variable `new_array`. The block passed to `map` as an argument has one evaluative statment simply checking whether the integer passed into the block is greater than 1. This will return a boolean value. The first iteration returns `false` and each iteration after returns `true`. Therefore the `map` method returns a new array object with boolean object `false` one time and `true` nine times. The `p` method is invoked on the last line and the object referenced by `new_array` is passed in resulting in the output and return values stated above.

Time: 5m 54s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
  puts n
end
p new_array
```

This code will output the integers 1-10 on separate lines and return an array object with `nil` in it 10 times. This is an example of transformative iteration using the `map` method. 

An array object is assigned to local variable `arr`. Then `map` method is calle on `arr` with the return value of `map` being assigned to local variable `new_array`. The `map` method will return a new array consisting of the return value of the block for each iteration through the calling object. In this situation the block ends with the `puts` method being invoked and the block parameter referencing the element from the calling object passed in as an argument. This results in the object being output and the block returning `nil`. A new array object containing `nil` 10 times is assigned to `new_array` and passed to the `p` method invocation as an argument where the array object is output and returned. 

> Time: 6m 11s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "hello"

[1, 2, 3].map { |num| a }
```

This code will output nothing and return array object `['hello', 'hello', 'hello']`. This is an example of transformational iteration using the `map` method. 

The `map` method is called on an array object, then passed a block as an argument. Within this block local variable `a`, which was initialized on line 1, is what is returned by the block. `map` pushed the return value of the block to a new array object, so when `a` is what the block returns the string variable `hello` is pushed to the new array. `map` then returns this new array object upon completing its iteration. 

> Time: 5m 5s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].each do |num|
  puts num
end
```

This code will output integers `1`, `2`, and `3` on separate lines and return array object `[1, 2, 3]`. This is an example of iteration using the `each` method. 

The `each` method is called on array object `[1, 2, 3]` and passed a block as an argument. Within the block the `puts` method is invoked and passed the object passed in from the calling object. This will output `1`, `2`, `3` all on separate lines. Because `each` always returns the calling object array object `[1, 2, 3]` is returned. 

> Time: 3m 47s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].any? do |num|
  num > 2
end
```

This code will return boolean object `true` and outputs nothing. This is an example of how the `any?` method uses the block return value to determine the method return value. 

When `any?` is called on the array object each element will be passed to the block and assigned to the block parameter `num`. The block will execute any code and evaluate the return value to a boolean value. The method is looking for the block to return a truthy value for _any_ of the iterations. If a truthy value is returned then the `any?` method will return `true`, otherwise it will return `false`.

> Time: 4m 20s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
```

This code will output nothing and return boolean object `false`. This is an exmaple of the block returning a truthy or falsy value to determine the `any?` methods return value. 

Each key-value pair of the hash that the `any?` method is called on will be passed to the block one at a time and assigned to the block parameters `key` and `value`. The block will evaluate the block to truthy or falsy. If there are _any_ instances where the block returns a truthy valut then the `any?` method will return `true`, if not, it will return `false`. In this case the block is checking to see if any of the string objects assigned to the `value` block paramter havea length greater than 4, which none do, so this code will return `false`. 

> Time: 5m 40s

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].all? do |num|
  num > 2
end
```
This code will output nothing and return boolean object `false`. This is an example of the block returning a truthy or falsy value to the `all?` method, and the methhod using that to determine it's return value. 

The `any?` method is called on an array object, each element within the array will be passed to the block one at a time and the block will return a truthy or falsy value depending on the code executed within it. In this circumstance the integer object assigned to block parameter `num` is is being compared to the integer 2. If `num` is greater than or equal to `2` then it will return `true` and the block will also return `true`, then will continue on to the next iteration. If all iterations result in the block returning `true` then the `all?` method will return `true` but if `any` of the iterations return `false` then the method will return false as well. Because the first integer in the calling object is less than 2 this method will return `false`. 

> Time: 5m 56s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end
```

Thsi code will output nothing but will return boolean object `true`. This is an example of the `all?` method utilizing its blocks truthy or falsy return value. 

The `all?` method is called on a hash, and the key-value pairs of the calling object are passed into the block and assigned to block parameters `key` and `value`. The `all?` methods block will return a truthy or falsy value based on the code executed within it. In this case, the code in the block is evaluating whether the current object referenced by `value` has a length greater than or equal to the integer object `3`. Becase all of the values of the calling object are at least 3 characters long each iteration of the block evaluates to true, and because of this the `all?` method will return `true`.

> Time: 6m 43s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
```
This code will output `"The index of 1 is 0."`, `"The index of 2 is 1."`, and `"The index of 3 is 2."`, and will return array object `[1, 2, 3]`. This is an example of the `each_with_object` method returning the calling object.

`each_with_index` is called on an array object, each element within the calling object is passed to the block as a parameter as well as the current index, one at a time. Within the block the `puts` method is called and a string object with the element and the index added to the string through interpolation. These string objects are all output. Because `each_with_index` return the calling object, `[1, 2, 3]` is returned. 

> Time: 4m 25s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end
```

This code will output nothing and return an array object with the string objects `ant`, `bear`, and `cat` inside of it. This is an example of the `each_with_object` method converting a key-value pair from its calling object to an array object and returning a new object. 

The `each_with_object` method is called on a hash object with one argument, an empty array. Each key-value pair is passed to the block one at a time and assigned to the block parameter `pair` as a 2 elements array object. The argument passed into the method is assigned to the block parameter `array`. Within the block the `last` method is called on the object referenced by `pair`, which returns the last elements of the array object. and thios is passed as an argument to the shoverl operator, which has been called on the object referenced by `array`. The `each_with_object` method then returns a new array object populated with the string objects from the calling object.

> Time: 7m 59s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
```

This code will output nothing and return hash object `{"ant"=>:a, "bear"=>:b, "cat"=>:c}`. This is an example of the `each_with_object` method returning a new object and setter methods.

The `each_with_object` method is called on a hash object with one argument, an empty hash. Each key-value pair is passed to the block one at a time and assigned to the block parameters `key` and `value` and the hash object argument is assigned to block parameter `hash`. Within the block the setter method `[ ]=` is used to set `value` as the key and `key` as the value in the hash object `hash`. Because `each_with_object` returns the new object, `{"ant"=>:a, "bear"=>:b, "cat"=>:c}` is returned. 

> Time: 5m 45s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd 
p even
```

This code woll output integers `[1, 3]` and `[2]`, then will return array object `[2]`. This is an example of the `partition` method utilizing a block that returns a truthy or falsy value based on the code executed within itself. 

The `partition` method is called on an array object, and each element of the calling object is pased to the block and assigned to block parameter `num`. Within the block the `odd?` method is called on `num` and will return a boolean value based on whether or not `num` is an odd integer object. `partition` will pass all truthy evaluating values to a subarray and all falsy evaluating values to a second subarray. These nested arrays are then returned by the `partition` method and assigned to local variables `odd` and `even`. The `p` method is called on both of these variables which outputs the two arrays and returns `[2]`.

> Time: 6m 24s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end
```

This code will output `Hello is truthy` and return `nil`. This is an example of truthy and falsey values. 

String object `Hello` is assigned to local variable `a` on line 1, then ono line 3 an in conditional evaluates whether or not `a` is considered truthy. Because the object referenced by `a` is `Hello`, a valid string object, and not `nil` or `false`, it evaluates to true, and the `puts` method on line 4 is invoked with the string `"Hello is truthy` passed in as an argument. This is outputted and `nil` is returned.

> Time: 3m 19s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end
```

This code will output `interview` and return `nil`. This is an example of how Ruby evaluates truthy and falsey values. 

On line 4 local variable `var` is assigned to the return value of the `test` method. Because the last line in the `test` method is an invocation of the `puts` method is returns `nil`, so that is the value assigned to `var`. On line 7 an if conditional statement checks to see if `var` is a truthy value, because `nil` evaluates to `falsey` the `else` statement is executed and the  puts   method is invoked with `interview` passed in as an argument. This is output and `nil` is returned. 

> Time: 3m 50s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def meal
  return 'Breakfast'
end

puts meal
```

This code will output `Breakfast` and and return `nil`. This is an example of explicitly calling `return`. 

The `puts` method is called on line 5 and the return value of the `meal` method is passed in as an argument. Within the method definition string object `Breakfast` is explicitly returned(note: the explicit return is not necessary in this situation because this is also the last line of the block, so it will implicitly return this anyhow), being the return value of the method, this is what the `puts` method outputs, and `puts` will return `nil`.

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def meal
  'Evening'
end

puts meal
```

The `puts` method is called and the return value of `meal` is passed in as an argument. Within the `meal` method body is the string object `Evening`, which, being the last thing executed in the method body will be implicitly returned. Therefore `Eveneing` will be output by `puts` and it will return `nil`. 

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal
```
This code will output 'Breakfast` and return `nil`. This is an example of explicitly return. 

The `puts` method is called on the last line, and the return value of the `meal` method invocation is passed in as an argument. Within the  `meal` method definition the `return` keyword is called to return `Breakfast`. This keyword exits the method and immediately returns the code that follows it, because that is essesntiall the new last line of the method body. In this case it returns `Breakfast` to the `puts` method invocation, which is output and `nil` is returned. 

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
```

This code will output `Dinner` and `Breakfast` on separate lines and return `nil`. This is an example of explicit and implicit return in Ruby. 

The `puts` method is onvoked on the last line and passed in the `meal` method as an argument. Within the `meal` method definition the `puts` method is invoked and string object `Dinner` is output. On the next line string object `Breakfast` is returned and the `meal` method returns it to the `puts` method on the last line, where it is output and `nil` is returned. 

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def meal
  'Dinner'
  puts 'Dinner'
end

p meal
```

This code will output `Dinner` and `nil` and also return `nil`. This is an example of the difference between output and return in Ruby. 

The `p` method is invoked on the last line and passed the `meal` method as an argument. Within the `meal` method body the `puts` method is invoked and string object `Dinner` is passed in as an argument, which outputs `Dinner` and returns `nil`. Since the return value of `meal` is `nil`, the `p` method on the last line outputs `nil` and also returns it. 

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
```

This code will output `Bereakfast` and return `nil`. This is an example of explicit return in Ruby. 

The `puts` method is called on the last line with the `meal` methof passed in as an argument. Within the `meal` method definition the `return` keyword is called so `Breakfast` is immediately returned the method definition is exited. Being the value returned by `meal`, `Breakfast` is passed to `puts` and is output and `nil` returned. 

> Time: 3m 6s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep
```

This code will output `0`, `1`, `2`, `3`,`4`, and `5` on separate lines and return `nil`. This is an example of iteration with the `times` method. 

The `times` method will loop through the block passed to it up to the integer object it is called upon, starting from 0. This integer is assigned to the block parameter `sheep` and then passed to the `puts` method, which outputs the current integer. `times` returns the calling object, which is passed to the `puts` method on the last line where it is output and `nil` is returned

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
```

This code will output integers `0 - 4` and `10` and will return `nil`. This is an exmaple of implicit return in Ruby.

The `count_sheep` method is passed to the `puts` method as an argument on the last line. Within the `count_sheep` method definition the `times` method is called on integere object `5`. Within the block passed to `times` `puts` is called on the block parameter which outputs `0-4` and `times` returns the calling object `5`. The `count_sheep` method returns `10` because that is the lane executed line of code in the method body. So it is passed into the `puts` method and output, and `nil` is returned. 

> Time: 4m 29s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
```

This code will output integers `0-2` on separate lines, as well as `nil` and will return `nil`. This is an example of explicit return in Ruby.

The `p` method is invoked and the `count_sheep` method passed to it as an argument. Within the `count_sheep` method is the integer object `5` with `times` method called on it. Within the block passed to `times` the block parameter is passed to `puts` where it will be out. After that an if conditional statement checks to see if the block parameter is greater than or equal to 2. When this condition evaluates to `true` the method explicitly returns and exits the method. So far the integers `0`, `1`, and `2` have been output. The explicit return returned `nil` which is the value passed to the `p` method on the last line. The `p` method returns and outputs `nil`. 

> Time: 5m 26s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
```

This code will output integer object `1` and return `nil`. This is an example of implicit return in Ruby.

Within the method definition of `tricky_number` is an if condition checking with `true` is truthy, which it is, therefore `number = 1` is the last executed line of code in the method body and evaulates to `1` so that is the value returned on the last line where `tricky_number` is invoked. It is passed to the `puts` method as an argument which outputs `1` and returns `nil`.

> Time: 3m 39s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
```

This code will output integer object `7` and return `nil`. This is an example of object passing by valuwe within Ruby. 

Local variable `a` is initialized to integer object `7` on line `1`. It is then passed as an argument to the `my_value` method invocation where the object referenced by `a` is assigned to method parameter `b`. Within the method body the object referenced by `b` is then reassigned to to return value of  incrementing the value of `b` with integere object `10`. Because of this reassignment and ebcause integers are immutable a new object is returned, `17`, and `b` is now pointing to that new object. So when the `puts` method is called with `a` passed in as an argument, it returns `7` because the `my_value` was not destructive. 

> Time: 5m 15s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby 
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
```

This code will output integere object `7` and return `nil`. This is an example of object passing by value. 

Thge local variable `a` is initialized to `7` on line and then passed as an argument to the `my_value` method invoked on like 7. Within the method definition the object referenced by `a` is then assigned to method parameter `a`. Line 4 has `a` reassigned to the return value of `a` added to `10`. Because of this reassignment and that integers are immutable method parameter `a` is no longer pointing to the same object as local variable `a`. Therefore when the `puts` method is called on line 8 and `a` is passed in, it outputs `7`, not `17`, and returns `nil`. 


> Time: 5m 20s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
```

This code will output integer object `7`, return `nil` and is an example of variable scope with methods in Ruby. 

The local variable `a` is initialized to `7` on line 1 and passed as an argument to the `my_value` method where the object referenced by `a` is added to `5` and then assigned to method parameter `b`. Within the method body local variable `a` (different `a`, with an inner scope) is then assigned to the object referenced by `b`. Because method definition scope does not allow for passing objects outside of passing in parameters, `a` is initialized within the block completely independently of the local variable `a` initialized on line 1. Therefore when the `puts` method is invoked and `a` is passed in, `7` is output because the object `a` is referencing has not be changed. 

> Time: 5m 55s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```

This code will output `Xy-zy`, return, `nil`, and is an example of object passing by reference in Ruby. 

A string object is passed to local variable `a` on line 1 and then is passed as an argument to the invoked method `my_value`. The object referenced by `a` is assigned to method parameter `b` and on line 3 a setter method is used to mutate the character at index 2 of the string object. Because setter methods are destructive this permanently changes the string object referenced by `a` and `b` to `'Xy-xy'`. The `puts` method is called and `a` the object referenced by `a` is passed in as an argument and `Xy-xy` is output and `nil` returned. 

> Time: 4m 15s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```

This code will output "Xyzzy", return `nil` and is an example of variables acting as pointers in Ruby. 

Local variable `a` is initialized to a string object on line 1, passed to the invoked method `my_value` on line 7, and then the object referenced by `a` is assigned to method parameter `b` in the method definition. Within the method body `b` is reassigned to a different string object, so now `a` and be are pointing at 2 different object in memory. `a` is then passed as an argument to `my_value` on the last line and the string object is was initialized to is output and  nil  returned. 

> Time: 3m 24s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```

This code will throw a `NameError` and is an example of variable scope within Ruby. 

The program throwsa a `NameError` because it cannot find local variable `a` within the method definition. That is because, even though local variable `a` is initialized on line 1 in the main object, within the method defition `a` has not been initiialzed. A method definitions has strict scoping parameters and local variable cannot be accessed from outside the defintion unless passed in as arguments.

> Time: 3m 16s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

This code will output `3`, return `nil` and is an example of variable scope in Ruby. 

Local variable `a` is initialized to integer object `7` on line 1. Then the `each` method is called on the array object referenced by `array` and each element from the array object is assigned to `element` with each iteration. Within the mwethod block `a` is reassigned to the object referenced by `element`, and because `a` (having outer scope) is accessible within the method block `a` is accessible and therefore is successfully reassigned to each element of the calling object. The last of which is integer object `3`, which is what is passed to the `puts` method on the last line, and output.

> Time: 4m 16s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

This code will throw a `NameError` and is an example of variable scope within Ruby. 

When the `each` array is called on the local variable `arr` that is referencing an arrya object an inner scope is created within the block passed to the method as an argument. A local variable is initialized within the block and therefore has an inner scope. So when the `puts` method is called on the last line and `a` is passed to it the program cannot find it because it cannot be accessed in the main object and throws a `NameError`.

> Time: 3m 41s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```

This code will output `7`, return `nil` and is an example of variable shadowing. 

Because local variable `a`, initialized on line 1, and the block parameter on line 4 share the same variable name `a` initialized on line 1 is not accessible within the method block on lines 4-6, therefore the object it is pointing to remains the same as when it was initialized. It is passed to the `puts` method as an argument and `7` is output. 

> Time: 3m 15s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
```

This code will throw a `NoMethodError` and is an example of variable scope in Ruby. 

On line 6 local variable `a` is trying to increment itself by the value of `b` but because it is within a method definition the local variable `a` initialization on line 1 is not accessible. Therefore `a` within the method definition does not exist and a `NoMethodError` is throw because the program cannot call the `+` method on `nil`. 

> Time: 2m 54s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```

This code will output nothing, return `[1, 2, 3]` and is an example of how the `select` method evaluates the return value of the block for selective iteration. 

This code returns a new array with the same elements as the calling array object because the block passed in as an argument always returns a truthy value. The last line in the block is the string object `hi` which is truthy and therefore every element within the calling object will be pushed to a new array object, and the `select` method returns this new array object. 

> Time: 3m 8s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
```

This code will output nothing, return `2` and is an example of how the `count` method evaluates the block to a truthy or falsey value. 

The count method, in this circumstance, is called on an array of strings. Each string is passed to the block and then checked to see if its length is less than `4`, which returns a boolean value and is what the block returns. 2 of the 3 elements have a length less than 3, and that is what the `count` method returns.

> Time: 3m 56s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].reject do |num|
  puts num
end
```

This code will output `1`, `2`, and `3` on separate lines and return array object `[1, 2, 3]`. This is an example of the `reject` method evaluating a truthy or falsey value from the block. 

The `reject` method is called on an array object and will evaluate a truthy or falsey value from its block. In this circumstance within the block the `puts` method is called and the element passed in from the caller is passed as an argument. Its value is output and it returns `nil`. The   `reject` method pushes each element from the caller to a new array if the block evaluates to false, therefore each element within the calling object is passed to a new array, and is then returned by the `reject` method.

> Time: 5m 40s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
```

This code will output nothing an return `{ 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }`. This is an examplwe of how setter methods operate. 

The `each_with_object` method allows us to create a new object while iterating over a collection at the same time. Within the block of this method the newly created hash `hash` is having a new `key-value` pair assigned to it. The key is being set by referencing the element at index `1` of the string object passed to the block and assigned to the block parameter `value`, then setting that key to the value of `value`. This occurs for each instance of the calling object. When iteration is done the `each_with_object` method returns the new object it has created. 

> Time: 5m 13s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
hash = { a: 'ant', b: 'bear' }
hash.shift
```

This code will output nothing, return `[:a, 'ant']` and is an example of the `Hash#shift` method and how it returns an array object instead of a hash. 

The `Hash#shift` method will remove the first key-value pair from the hash object it is called upon and return it in the form of a 2 element hash. IN this circumstance the first key-value pair is `{a: 'and'}` which is removed from the calling object and returned as `[:a, 'ant']`. 

> Time: 3m 50s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
['ant', 'bear', 'caterpillar'].pop.size
```

This code will output nothing, return integer object `11`, and is an ecample of what the return value of the `Array#pop` method is in Ruby. 

The `Array#pop` method will remove the last element of an array object from the calling array object and return the element that is being removed. In this situation the return value will be `caterpillar`, but because the `String#size` method is chained onto the object returned by `pop`, `String#size` will count the number of elements within the string and return that number, which is `11`. 

> Time: 3m 39s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
```

Thsi code will output `1`, return `true` and is an example of how the block passed to the `any?` method evaluates to truthy or falsey. 

The output of this code is due to the `puts` method being called on line 2 with the first element of the calling array object passed in via the `num` block parameter. The `any?` method is waiting for the block to return a truthy value and as soon as that occurs the `any?` method will return `true`. If the block never returns a truthy value then the `any?` method will iterate through each element of the calling object and return `false` at the end. 

> Time: 5m 0s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5]
arr.take(2)
```

This code will output nothing, return `[1, 2]` and is an example of how the `take` method works. 

Local variable `arr` is assigned to an array object on line 1 and then the `take` method is called on it on line 2 with `2` passed in as an argument. The arument will dictate the length of the new array object returned by `take`. In this situation 2 is the length so `take` will push the first two elements of the calling object to a new array, and then return that array. This is not a destructive method so the original object remains unchanged. 

> Time: 4m 10s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
```

This code will output nothing, return `[nil, 'bear']`, and is an example of how the `map` mewthod uses the return value of its block to perform transformative iteration. 

The `map` method is being called on a hash object and passed a block with two parameters, `key` and `value`, both assigned to the key and value the calling object upon each iteration. Within the block an `if` conditional is evaluating whether the length of `value` is greater than `3`, and if this evaluates to `true` then returning `value`. If it doesn't evaluate to true then the `if` statement returns `nil`. Because `map` uses the return value of the block to populate a new object the return value of the block will either be the object referenced by `value` or `nil`. The first value in the caller evaluates to `nil` because `ant` is no greater than 3 characters long, and the second returns `bear` because the value is greater than `3`. `map` then returns the new array object. 

> Time: 6m 30s

---

> What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
```

This code will output `2`, and `3` on separate lines , return `[1, nil, nil]` and is an example of how the `map` method uses the block passed to it to transform collections. 

Within the block pased to the `map` method `num` is being assigned to a element from the calling array object upon each iteration. On the second line an `if...else` conditional is evaluating whether `num` is greater than `1`. If this evaluates to true then the `puts` method is called and `num` pased in as an argument which, in this situation outputs `2` and `3`, and then returns `nil`. If it evaluates to `false` then it defaults to the `else` statement where `num` is returned, in this case `1` is the only instance of `num` that goes to the `else` statement. Because `map` uses the return value of the block to poplulate a new array `[1, nil, nil]` is returned because of the `if...else` conditional within the block. 

> Time: 6m 25s

---

# TRY THESE OUT #



```ruby
array = [1, 2, 3, 4, 5, 6, 7]
counter = 0

loop do
  break if counter >= array.length
  array[counter] += 1
  counter += 1
end

array   
```

```ruby
array = [1, 2, 3, 4, 5, 6, 7]
counter = 0
evens = []

loop do
  break if counter >= array.length
  if array[counter].even?
    evens << array[counter]
  end
  counter += 1
end

p array   
p evens   
```

---

```ruby
a = 2
b = 2
 
c = "riaz"
d = "riaz"

p a.object_id
p b.object_id
p c.object_id
p d.object_id
```

This example demonstrates **Object passing strategy** in Ruby. Here the **Object is being appears to be passed as a value** since the original object is **not mutated**.

This example demonstrates **Object passing strategy** in Ruby. Here the **Object is being appears to be passed as a reference** since the original object **is mutated**. 

---
```ruby
words = %w(Mary bowtie California pasta tacos Ohio)
words.partition { |word| (word =~ /[A-Z]/) == 0 }
# => [["Mary", "California", "Ohio"], ["bowtie", "pasta", "tacos"]]

# capturing the above arrays using parallel assignment
proper_nouns, nouns = words.partition { |word| (word =~ /[A-Z]/) == 0 }
p proper_nouns  # => ["Mary", "California", "Ohio"]
p nouns         # => ["bowtie", "pasta", "tacos"]

# super simple parallel assignment
a, b = [1, 2]

# using partition
odds, evens = (1..10).partition { |num| num.odd? }
p odds  # => [1, 3, 5, 7, 9]
p evens # => [2, 4, 6, 8, 10]

##################

nums = [3, 2, 6, 4, 8, 1, 5, 9, 0]

nums.sort { |a, b| b <=> a }
# => [9, 8, 6, 5, 4, 3, 2, 1, 0]

# compare by other criteria
['aaa', 'a', 'aaaaa', 'aa', 'aaaa'].sort do |a, b|
  a.size <=> b.size
end
# => ["a", "aa", "aaa", "aaaa", "aaaaa"]

# block with additional code
['aaa', 'a', 'aaaaa', 'aa', 'aaaa'].sort do |a, b|
  puts "a has #{a.size} letters and b has #{b.size} letters"
  a.size <=> b.size
end
# a has 3 letters and b has 1 letters
# a has 3 letters and b has 5 letters
# a has 5 letters and b has 2 letters
# a has 3 letters and b has 2 letters
# a has 1 letters and b has 2 letters
# a has 5 letters and b has 4 letters
# a has 3 letters and b has 4 letters
# => ["a", "aa", "aaa", "aaaa", "aaaaa"] 

###############

[123, 432, 543, 642, 543, 256].sort_by do |num|
  num.digits.first
end
# => [432, 642, 123, 543, 543, 256]

contacts = {
  Jenny: '230-867-5309',
  Skylar: '432-555-5555',
  joe: '230-432-1234',
  Jimmy: '123-123-1234'
}
contacts.sort_by do |_, number|
  number.split('-')[0]
end
# => [[:Jimmy, "123-123-1234"], [:Jenny, "230-867-5309"], [:joe, "230-432-1234"], [:Skylar, "432-555-5555"]]

# sort by name in alphabetical order
contacts.sort_by do |name, _|
  name.capitalize
end
# => [[:Jenny, "230-867-5309"], [:Jimmy, "123-123-1234"], [:joe, "230-432-1234"], [:Skylar, "432-555-5555"]]

hash = { chris: '510-204-5555', sam: '510-909-5526',
adrienne: '650-433-2112' }

hash.sort_by do |name, number|
  p name.length * number.split('-')[2][0].to_i
end
# 25, 15, 16
# => [[:sam, "510-909-5526"], [:adrienne, "650-433-2112"], [:chris, "510-204-5555"]] 


########################

words = %w(cantaloupe apple durian bananas)

# default uses <=> to compare collection elements
words.min                                 # = > "apple"
words.min(2)                              # => ["apple", "bananas"]

# with a block
words.min { |a, b| a.size <=> b.size }    # => "apple"
words.min(2) { |a, b| a.size <=> b.size } # => ["apple", "durian"]


##################


words = %w(cantaloupe apple durian)

# sort by amount of vowels
words.min_by { |word| word.count("aeiou") }
# => "apple"
words.min_by(2) { |word| word.count("aeiou") }
# => ["apple", "durian"]

```

```ruby
#Provide two examples of a method invocation that you have previously defined. One should have all syntactical sugar removed

def say_hello
  puts 'hi'
end

say_hello
say_hello()

#what does this return? 
1.times { 2 + 2 }


#what error does this return 
def change_object(string, a)
  string += "!"
end

a = "Value"
puts a                   
puts change_object(a)      
puts a                 

# What are the different hash types?
old_hash = { :a => 'ant', :b => 'bear' }
new_hash = { a: 'ant', b: 'bear' }

# what types of objects can a key and value be?

# What can go wrong with hashes?
```
---
```ruby
# What is output when we execute the following code?
def a_method
  puts message
end

message = "hello there!"

puts message
a_method
```

This will output `hello there!` and then throw a `NameError`. This is an example of local variable scoping rules. 

The first successful output is due to the `puts` method invocation on line 7 and the object referenced by local variable `message` passed in as an argument. On line 8 `a_method` is invoked and within the method body local variable `message` is passed to the `puts` method invocation. Because `message` has not been initialized within the method body and variables initialized outside of the method body are not accessible inside it, unless passed as an argument, the NameError is thrown. 

> Time: 4m 42s

---

```ruby
# What is output when we execute the following code?
# How does it differ from the example above?
MESSAGE = "hello there!"

def a_method
  puts message
end

puts MESSAGE
a_method
```
This will output `hello there!` and then throw a `NameError`. This is an example of local variable scoping rules. 

This is nearly identical to the problem from above with the difference being that a constant is being initialized on line 1. But because the `puts` method invocation within the `a_method` definition is being passed `message` it will throw a `NameError` again. This is once again because `message` has not been initialized within the method body or passed in as an argument, which means it is not accessible within the method body.

> Time: 3m

---

```ruby
# What is output when we execute the following code? Explain how and why
def a_method(message)
  puts message
end

message = "hello there!"

puts message
a_method(message)
```

This code is going to output `"hello there!"` two times on separate lines, return `nil` and is an example of object passing in Ruby.

Local variable `message` is initialized to a string object on line 5, then passed as an argument to the `puts` method invocation where the string object is output the first time. `message` is then passed as an argument to the `a_method` method invocation, where the object referenced by `message` is assigned to the method parameter `message` within the method body. That reference is then passed as an argument to the `puts` method which outputs the string object the second time and returns `nil`. Being the last evaluated line of code from the method this `nil` is what the code returns. 

> Time: 4m 38s

---

