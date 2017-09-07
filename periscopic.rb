# Implement an algorithm that accepts an array of numeric ranges [start, end] and returns an array where all of the overlapping ones are merged. For example (in JavaScript) it should behave fundamentally like this:



def mergeOverlaps(ranges) 
  # I misunderstood this question for a while and thought I was being asked to return an array containing the ranges with overlapping ranges only so I had a lot of questions as listed below.

      #1. what happens if if there is only one element in the array? Do I return that single element or do I return nil because there is no other element it overlaps with?

      #2. what happens if all the ranges are different? or there is no overlap in any of the ranges? Do I return nil?

      #3. what happens if there are multiple occurence of a numeric range? For example, if the array includes is [[1, 3], [1, 3], [4, 12], [1, 3]], do I return all instances of [1, 3]?

      #4. what happens if there are multiple overlaps? For example if the given array is [[0, 2], [1, 3], [5, 9], [11, 15]] then there would be a range of 2 (for [0, 2], [1, 3]) and a range of 4 for ([5, 9], [11, 15]). Do I return all of them in one array or do I return two separate arrays for each of the overlapping ranges?

      #5. what happens if two ranges are equal but opposite? For exmaple, if the given array is [[1, 2], [3, 2]] do I consider the absolute range, in which case [1, 2], [3, 2] will have a range of (+1) and (-1) respectively. Should I I return them as overlapping (order agnostic) or return nil because there is no overlap (order-sensitive)? 
  # But once I thought through it over again and clearly understood what was being asked there were only a few questions I had as listed below:

      #1. Should I account for non-positive numbers?
      #2. This might involve several lines of code. Should I try to get the solutions in early at the expense of cleaner code OR should I take more time to think through it and write a much leaner but efficient code taking TIME and SPACE complexities into consideration?

  # I started and decidedto strike a balance between the two and ended up with the solution below.



  
  # Initialize an empty array to hold the non-overlaps
  no_overlaps = []
  # sort the given ranges by the first element of each range. This is necessary to make iterating through the array easier without a longer algorithm. I could have implemented a quick sort algorithm to handle this but I opted to take advantage of ruby's sort_by method which basically uses quick sort under the hood for this kind of sorting
  sorted_ranges = ranges.sort_by { |range| range.first }
  # pull out the first range in the sorted array, which should contain the smallest starting number in the array.
  overlap = sorted_ranges.first # identical to sorted_ranges[0]
  # iterate through the remaining ranges of the sorted array checking for overlaps. Below, I check to see if the first element of a given pair of numbers (of the range) lies between my current overlap and the last (or second in this case) element is greater than the bigger number in my current overlap. If these two conditions are met then I widen my overlap by replacing the bigger value of my current overlap with the bigger value of the current range. otherwise I push that range into the no_overlaps array.
  

  sorted_ranges.each_with_index do |range, i| 
    # above, I iterated from the 2nd element to the last element (inclusive) of the array since I had already pointed my 'overlap' to the first element.
    if range.first.between?(overlap.first, overlap.last)
      overlap[1] = [range[1], overlap[1]].max
    else
      no_overlaps << range if no_overlaps.empty? || range.last > no_overlaps.last.last
      mergeOverlaps(sorted_ranges[i..-1]) 
    end

    # Could have used a ternary operator for the above but opted for a more elaborate code lines.
  end
  
  # In the end I concat the two arrays (overlap and no_overlaps) and return the result of that.
  [overlap] + no_overlaps  # ruby implicitely return the last line of the code block.
end

# I could go on to refactor but I think I already took more than enough time already.


# I used inspect below for orgnaized console display purposes only.
puts mergeOverlaps([[1, 3], [5, 7], [9, 11]]).inspect; # [[1,3], [5,7], [9,11]]
puts mergeOverlaps([[9, 11], [2, 7], [1, 3]]).inspect; # [[9,11], [1,7]]
puts mergeOverlaps([[2, 7], [1, 3], [6, 11]]).inspect; # [[1,11]]
puts mergeOverlaps([[3, 7], [6, 11], [10, 15], [1, 2]]).inspect; # [[1, 2], [3,15]]
puts mergeOverlaps([[1, 3], [4, 7], [10, 15], [2, 11]]).inspect; # [[1,15]]

