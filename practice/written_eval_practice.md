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

