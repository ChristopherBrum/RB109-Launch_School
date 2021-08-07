=begin
-----------------------INSTRUCTIONS--------------------------------------
You are given two arrays that each contain data that represents the min and max weather temperatures for each day of the week.

The first array, the records array, contains the all-time record low/high temperatures for that day of the week.
e.g. [[record low, record high], ...]

The second array, the current week array contains the daily low/high temperatures for each day of the current week.
e.g. [[daily low, daily high], ...]

A daily high temperature is considered a new record high if it is higher than the record high for that day of the week. A daily low temperature is considered a new record low if it is lower than the record low for that day of the week.

Compare the daily low/high temperatures of the current week to the record lows/highs and return an array with the updated record temperatures.

There may be multiple record temperatures in a week.
If there are no broken records return the original records array.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Arrays, 1st --> records array, 2nd --> current array
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:  
  -First input array is the record low and high temps for this week
  -second input array is the current low and high temps for this week
  -compare the record low/high and the current low/high and return a new array containing all record lows/highs, including any records set this week. 
  -if no new records are set return the old records array
Implicit:  
  -input temps will always be whole numbers

--------------------------EXAMPLES---------------------------------------
#             sun       mon      tues       wed      thur      fri       sat
record_temps([[34, 82], [24, 82], [20, 89],  [5, 88],  [9, 88], [26, 89], [27, 83]],
            [[44, 72], [19, 70], [40, 69], [39, 68], [33, 64], [36, 70], [38, 69]])

➞           [[34, 82], [19, 82], [20, 89], [5, 88], [9, 88], [26, 89], [27, 83]]

=begin
----------------------------ALGO-----------------------------------------
==> Run the through the record low/high temps and compare the low/highs for this week, replacing any new records set this week and return the new records. 

-- method --> record_temps(array, array) --> array
  -iterate through the records array using transformation and the index 
    -initialize 'current_record' to an empty array
    
    -push the return value of record_low to current_record
    -push the return value of record_high to current_record
    -returns current_record
    
  -returns transfortmed array
    
-- method --> record_high(integer, integer) --> boolean
  -return higher value between record high and current high

-- method --> record_low(integer, integer) --> boolean
  -return lower value between record low and record low
    
=end

def record_low(record, temp)
  temp < record ? temp : record
end

def record_high(record, temp)
  temp > record ? temp : record
end

def record_temps(records, weeks_temps)
  records.map.with_index do |day_rec, index|
    record_low_and_high = []
    record_low_and_high << record_low(day_rec.first, weeks_temps[index].first)
    record_low_and_high << record_high(day_rec.last, weeks_temps[index].last)
  end
end

p record_temps([[34, 82], [24, 82], [20, 89],  [5, 88],  [9, 88], [26, 89], [27, 83]], [[44, 72], [19, 70], [40, 69], [39, 68], [33, 64], [36, 70], [38, 69]]) == [[34, 82], [19, 82], [20, 89], [5, 88], [9, 88], [26, 89], [27, 83]]
