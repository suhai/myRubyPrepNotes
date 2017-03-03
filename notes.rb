# ruby file
#

puts 1 - 2 == -1
puts 3 + 2 == 4
puts 'peter piper picked a peck of pickle pepper'

puts
puts " ===== chr and ord ===== "
puts 97.chr
puts 99.chr
puts "a".ord
puts "A".ord
puts "z".ord
puts "Z".ord
puts "c".ord
puts "m".ord
puts "a is equal to : " + "a".ord.to_s
puts "z is equal to : " + "z".ord.to_s
puts "The ord for \" \" is \" \".ord which is = " + " ".ord.to_s
puts "32.chr is equal to \" \""
puts
puts " ===== slice, inject, each_cons ===== "
puts "mississippi".slice(0, 3)
puts "mississippi".slice(2, 5)
puts "mississippi".slice(-4, 3)
puts "mississippi".slice(-1, 6)
puts
puts (1..2).inject(:+)
puts (1..2).inject(:-)
puts
nums = 1..10
puts nums.inject(:+)
puts nums.inject(:-)
puts nums.inject(:*)
puts
#each_cons(p1) public
#Iterates the given block for each array of consecutive <n> elements. 
#If no block is given, returns an enumerator.
nums.each_cons(3) {|a| p a}
puts
nums.each_cons(3) {|a| print "#{a.inject(:+)}; " }
puts
# Sum some numbers
puts (5..10).reduce(:+)                            #=> 45
# Same using a block and inject
puts (5..10).inject {|sum, n| sum + n }            #=> 45
# Multiply some numbers
puts (5..10).reduce(:*)                         #=> 151200
# Same using a block
puts (5..10).inject(1) {|product, n| product * n } #=> 151200
puts
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo,word|
   memo.length > word.length ? memo : word
end
puts longest 
puts

an_array = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
new_string = ''
ind = 4
new_string << an_array[(ind-3)..(ind+3)].to_s
puts new_string.include?("3")
puts
puts " ===== select, include, any?, is_a? ===== "
#(1..10).each_cons(3) {|a| puts a.inject(:-)}
#puts
#puts nums.inject(:/).to_f
puts nums.select {|x| x % 3 == 0}.inspect
puts nums.include?(5)
puts nums.include?(15)
puts nums.any? {|x| x % 2 == 0}
puts nums.any? {|x| x % 11 == 0}
puts
puts "string".is_a?(String) 
puts "string".is_a?(Object)
puts 1.is_a?(Integer)
puts 1.is_a?(Object)
puts 1.is_a?(Numeric)
puts
puts " ===== Primes, Math, index, etc ===== "
require "prime" # needed in order for Prime to be activated
#some_primes = []
#Prime.each(30) { |prime| some_primes << prime }
#puts some_primes.inspect
puts (Prime.first 5).inspect # puts the first five primes starting from 2
puts Prime.entries(30).inspect # puts all prines less than 30
puts Prime.prime?(2) # puts true if 2 is prime. otherwise puts false

puts
#require "mathn" # needed in order for some math computations
#puts Math.sqrt(4/9)     # => 2 over 3
#puts Math.sqrt(4.0/9.0) # => 0.666666666666667
#puts Math.sqrt(- 4/9) # => Error message if 'math' isn't been rquire
puts 
puts 8.lcm(5)
puts 8.lcm(2)
puts 8.lcm(3)
puts
puts 24.gcd(8)
puts 24.gcd(20)
puts 24.gcd(5)
puts
puts [1, 2, 3].index(1)
puts [1, 2, 3].index(2)
puts [1, 2, 3].index(3)
puts [1, 2, 3].index(4)
puts "Couldn't find answer" if [1, 2, 3].index(42) == nil
puts "Couldn't find answer" if [1, 2, 3].index(42).nil?
puts
print (0..10).select {|x| x % 2 == 0}.reverse.reverse
puts
puts
puts " ===== string and array theory ===== "
puts "catamaran".scan(/\w/).inspect
puts "catamaran".scan(/./).inspect
puts
puts [1,2,3,4].inspect
puts "suhai"
puts "suhai".inspect
p "suhai"
p [1,2,3,4]
p 98
puts 98
puts 1 + 2
p 1 + 3
puts
puts %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
puts %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
#puts [nil, true, 99].all?
puts %w[ant bear cat].any? { |word| word.length >= 3 } #=> true
puts %w[ant bear cat].any? { |word| word.length >= 4 } #=> true
puts
#[nil, true, 99].any?  
[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk {|n| n.even?}.each {|resp,argu| p [resp, argu]}
puts

def sum_nums(num)
    puts (0..num).reduce(:+)
end
sum_nums(10)
puts

#values_at
a = %w{ a b c d e f }
p a.values_at(1, 3, 5)          # => ["b", "d", "f"]
p a.values_at(1, 3, 5, 7)       # => ["b", "d", "f", nil]
p a.values_at(-1, -2, -2, -7)   # => ["f", "e", "e", nil]
p a.values_at(4..6, 3...6)      # => ["e", "f", nil, "d", "e", "f"]
puts

#zip
a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
p [1, 2, 3].zip(a, b)   #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
p [1, 2].zip(a, b)      #=> [[1, 4, 7], [2, 5, 8]]
p a.zip([1, 2], [8])    #=> [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
puts
# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.
#
# Difficulty: easy.
puts " ===== factorial ===== "
def factorial(n)
  result = 1
  if n == 0
    result
  else
    result = (1..n).reduce(:*)
  end
  result
end
puts factorial(0)
puts factorial(1)
puts factorial(2)
puts factorial(3)
puts factorial(10)
puts
puts
# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
#
# Difficulty: easy.
puts " ===== sum_nums ===== "
def sum_nums(num)
  return (0..num).reduce(:+)
end
puts sum_nums(1)
puts sum_nums(3)
puts sum_nums(6)
puts sum_nums(10)
puts sum_nums(15)
puts
puts
# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.
puts " ===== time_conversion ===== "
def time_conversion(num)
  hours, minutes = 0, 0
  if num < 10
    return "#{hours}:0#{num}"
  elsif num < 60 
    return "#{hours}:#{num}"
  else
    while num >= 60 do
      num -= 60
      hours += 1
      minutes = num
    end
    return "#{hours}:0#{minutes}" if minutes < 10
    return "#{hours}:#{minutes}" if minutes >= 10
  end
end
puts time_conversion(5)
puts time_conversion(70)
puts time_conversion(15)
puts time_conversion(150)
puts time_conversion(360)
puts time_conversion(803)
puts
puts
puts " ===== letter_changes ===== "
# Using the Ruby language, have the function LetterChanges(str) take 
# the str parameter being passed and modify it using the following algorithm.
# Replace every letter in the string with the letter following it in the 
# alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in 
# this new string (a, e, i, o, u) and finally return this modified string.

def letter_changes(str)
    str.downcase.tr("a-yz", "b-za").tr("aeiou", "AEIOU")
    #string1 = str.tr("z", "a")
    #string2 = string1.tr("a-y", "b-z")
    #string3 = string2.tr("aeiou", "AEIOU")
    #string3
end
puts letter_changes("SuhAibu") # "tvIbjcv"
puts letter_changes("heLlo*3") # "Ifmmp*3"
puts letter_changes("fUn tImes!") # "gvO Ujnft!"
puts

puts " ===== capitalize words ===== "
# capitalize words
def capitalize_words(string)
  string.split(" ").map(&:capitalize).join(" ")
end
puts capitalize_words("the boy is good")
puts capitalize_words("our father who art in heaven")
puts capitalize_words("here i am to worship")
puts

puts " ===== alphabetized the letters in the string ===== "
# reorganize the alphabets of the string in aplabetical order
def alphabet_soup(str)
    return str.split("").sort.join("")
end
puts alphabet_soup("suhaibu")
puts alphabet_soup("yehuza")
puts alphabet_soup("akekevo")
puts

# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.
puts " ===== longest_word ===== "
def longest_word(sentence)
  sentence.split(" ").inject {|x,y| x.size > y.size ? x : y}
end
puts longest_word("Some stupid students are smoking mississippi")
puts longest_word("Oh, say can you see by the dawn's early light")
puts longest_word("Come to the place for which our fathers sighed")
puts longest_word("a")
puts longest_word("ye ol go ha ha so") #= 'ye' or 'so' based on method
puts
puts
#lucky_sevens?
#Write a function lucky_sevens?(numbers), which takes in an array of integers 
#and returns true if any three consecutive elements sum to 7.
puts " ===== lucky_sevens? ===== "
def lucky_sevens?(arr)
  if arr[-1] + arr[0] + arr[1] == 7
    return true
  elsif arr[-2] + arr[-1] + arr[0] == 7
    return true
  elsif
    arr.each_cons(3) {|group| return true if group.reduce(:+) == 7}
  end
  false
end
puts lucky_sevens?([2,1,5,1,0]) #== true # => 1 + 5 + 1 == 7
puts lucky_sevens?([0,-2,1,8]) #== true # => -2 + 1 + 8 == 7
puts lucky_sevens?([7,7,7,7]) #== false
puts lucky_sevens?([3,4,3,4]) #== false
puts lucky_sevens?([3,4,9,0]) #== true
puts lucky_sevens?([4,8,3,0]) #== true
#Make sure your code correctly checks for edge cases (i.e. the first and last 
#elements of the array).
puts
puts
puts " ===== is_power_of_two? ===== "
# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
#
# Difficulty: medium.
def is_power_of_two?(num)
    return true if num == 1
    return false if num < 1
  while true
    if num % 2 == 0
      num = num / 2
      return true if num == 1
    else 
      return false
    end
  end
end
puts is_power_of_two?(0)
puts is_power_of_two?(1)
puts is_power_of_two?(8)
puts is_power_of_two?(100)
puts is_power_of_two?(64)
puts is_power_of_two?(8796093022208)
puts
puts
puts " ===== HCF ===== "
# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.
#      H.C.F.
def highest_common_factor(num1, num2)
  return "Invalid Entry" if (num1 == 0 or num2 == 0)
  l_num = ( num1 <= num2 ? num1 : num2 )
  
  while true do 
    tester1 = num1 % l_num
    tester2 = num2 % l_num
    return l_num if (tester1 == 0 and tester2 == 0)
    l_num -= 1
  end
end
puts highest_common_factor(3, 6)
puts highest_common_factor(6, 10)
puts highest_common_factor(5, 17)
puts highest_common_factor(0, 30)
puts highest_common_factor(16, 24)
puts highest_common_factor(15, 55)
puts
puts
puts " ===== LCM ===== "
#     Also check out this L.C.M. method
def least_common_multiple(num1, num2)
  return "Invalid Entry" if (num1 == 0 or num2 == 0)
  h_num = ( num1 >= num2 ? num1 : num2 )

  while true do 
    tester1 = h_num % num1
    tester2 = h_num % num2
    return h_num if (tester1 == 0 and tester2 == 0)
    h_num += 1
  end
end
puts least_common_multiple(3, 6)
puts least_common_multiple(2, 10)
puts least_common_multiple(5, 7)
puts least_common_multiple(14, 0)
puts least_common_multiple(11, 54)
puts 
puts
puts " ===== oddball_sum ===== "
#oddball_sum
#Write a function oddball_sum(numbers), which takes in an array of integers 
#and returns the sum of all the odd elements.
def oddball_sum(numbers)
  numbers.select { |num| num.odd? }.reduce(:+).to_i
end
puts oddball_sum([1,2,3,4,5]) #== 9 # => 1 + 3 + 5 == 9
puts oddball_sum([0,6,4,4]) #== 0
puts oddball_sum([1,2,1]) #== 2
puts
puts
puts " ===== disemvowel ===== "
#disemvowel
#Write a function disemvowel(string), which takes in a string, and 
#returns that string with all the vowels removed. Treat "y" as a consonant.
def disemvowel(string)
  string.scan(/[^aeiou]/).select {|lett| lett}.join("").inspect 
end
puts disemvowel("foobar") #== "fbr"
puts disemvowel("ruby") #== "rby"
puts disemvowel("aeiou") #== ""
puts
puts
puts " ===== palindrome? ===== "
# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.
def palindrome?(string)
  string.reverse == string
end  
  #string_arr = string.split("")
  #string_arr.each_with_index.all? {|x, i| string[i] == string[-(1 + i)] }
  #ind = 0
  #while ind < string.length do
  #  if string[ind] != string[string.length - (1 + ind)]
  #    return false
  #  end
  #  ind += 1
  #end
  #return true
#end
puts palindrome?("abcdcba")
puts palindrome?("abcdhaha")
puts palindrome?("halahalah")
puts palindrome?("jalajala")
puts
puts
puts " ===== longest_palindrome ===== "
# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.
def longest_palindrome(string)
  pal = []
  i = 0
  while i < string.size do
    j = 1
    while (i + j) <= string.size do
      pal << string.slice(i, j) if palindrome?(string.slice(i, j))
      j += 1
    end
    i += 1
  end
  pal.inject {|x, y| x.size > y.size ? x.to_s : y.to_s}
end
puts longest_palindrome("string")
puts longest_palindrome("adda")
puts longest_palindrome("mpcbaddabckl")
puts longest_palindrome("abcbdeffe")
puts
puts
puts " ===== count_vowels ===== "
# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.
def count_vowels(string)
  my_vowels = []
  string.scan(/[aeiou]/) {|element| my_vowels << element}
  return my_vowels.length
end
puts count_vowels("aeiou")
puts count_vowels("abcd")
puts count_vowels("color")
puts count_vowels("colour")
puts count_vowels("cecilia")
puts
puts
puts " ===== reverse string ===== "
# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.
def reverse(string)
   rev_string = "" 
   string.scan(/\w/) { |w| rev_string = w + rev_string }
   rev_string
end
puts reverse "zartacla"
puts reverse "noilmooz"
puts reverse "idolekek"
puts
puts
puts " ===== nearby_az ===== "
# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** (my code modifies it to "within") 
#an "a". You may assume that the string contains only lowercase letters.
# Difficulty: medium.
def nearby_az(string)
  ind = 0
  while ind < string.length do
    if string[ind] == "a"
      new_string = ""
      if ind == 0
        new_string << string[1..3].to_s
        return true if new_string.include?("z")
      elsif ind == 1
        new_string << string[0].to_s
        new_string << string[2..4].to_s
        return true if new_string.include?("z")
      elsif ind == 2
        new_string << string[0..1].to_s
        new_string << string[3..5].to_s
        return true if new_string.include?("z")
      else
        new_string << string[(ind-3)..(ind+3)].to_s
        return true if new_string.include?("z")
      end
    end
    ind += 1
  end
  return false
end
puts nearby_az("zgdajfhfhcamafdsjkhihi")
puts nearby_az("baz")
puts nearby_az("batracftz")
puts nearby_az("abz")
puts nearby_az("a")
puts nearby_az("z")
puts nearby_az("za")
puts 
puts
puts " ===== third_greatest ===== "
# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.
def third_greatest(arr)
  arr.max(3).min
end
=begin
def third_greatest(arr)
  high_num = nil
  higher_num = nil
  highest_num = nil
    arr.each do |num|
      if highest_num == nil or  num >= highest_num
        high_num = higher_num
        higher_num = highest_num
        highest_num = num
      elsif higher_num == nil or  num >= higher_num
        high_num = higher_num
        higher_num = num
      elsif high_num == nil or  num >= high_num
        high_num = num
      end
    end
    return high_num
end
=end
puts third_greatest([5, 3, 7])
puts third_greatest([5, 3, 7, 4])
puts third_greatest([2, 3, 7, 4])
puts third_greatest([-19, 4, -8, 0, -2])
puts
puts " ===== most_common_letter ===== "
# Write a method that takes in a string. Your method should return the
# most common letter in the string, and a count of how many times it
# appears.
#
# Difficulty: medium.
def most_common_letter(string)
  #a_string = string.downcase!
  #arr = string.split("")
  #arr.sort.inspect
  #arr.uniq.inspect
  #arr.map { |c| [c, arr.count(c)] }.inspect
  #arr.uniq.map { |c| [c, arr.count(c)] }
  #arr.uniq.map { |c| [c, arr.count(c)] }.max_by(&:last).inspect
  ##arr.uniq.map { |c| [c, arr.count(c)] }.max_by(&:first).inspect
  arr = string.downcase.split("")
  arr.uniq.map { |c| [c, arr.count(c)] }.max_by(&:last).inspect
end
puts most_common_letter("AlalalAaaabama")
puts most_common_letter("qbcq")
puts most_common_letter("abbab")
puts
puts
puts " ===== dasherize_number ===== "
# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.
=begin
def dasherize_number(nums)
  num_string = nums.to_s
  result = ""
  ind = 0
  while ind < num_string.size do 
    curr_val = num_string[ind].to_i
    if ind > 0
    prev_val = num_string[ind - 1].to_i
      if prev_val % 2 == 1 or curr_val % 2 == 1
        result << "-"
      end
    end
    result << num_string[ind]
    ind += 1
  end
  return result
end
=end
def dasherize_number(nums)
  num_string, result = nums.to_s.split(""), ""
  
  num_string.each_with_index do |char, ind| 
    if ind == 0 
      result << num_string[0]
    else (num_string[(ind) - 1].to_i.odd? || num_string[ind].to_i.odd?) ?
      result << ("-#{char}") : result << char
    end
  end
  return result
end
puts dasherize_number(3333) # 3-3-3-3
puts dasherize_number(202) # 202
puts dasherize_number(305) # 3-0-5
puts dasherize_number(3887) # 3-88-7
puts dasherize_number(203) # 20-3
puts dasherize_number(1234567) # 1-2-3-4-5-6-7
puts
puts
puts " ===== capitalize_words ===== "
# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.
def capitalize_words(string)
  string.split.map(&:capitalize).join(" ")
end
puts capitalize_words("john is my son")
puts capitalize_words("this is a sentence")
puts capitalize_words("mike bloomfield")
puts 
puts
puts " ===== scramble_string ===== "
# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.
def scramble_string(string, indices)
  string_arr = string.split("")
  stringer = []
  string_arr.each_with_index { |l, i| stringer << string_arr[indices[i].to_i] }
  return stringer.join("").capitalize
end
puts scramble_string("abcd", [3, 1, 2, 0]) # dbca
puts scramble_string("uuishba", [3, 1, 4, 6, 2, 5, 0]) # suhaibu
puts scramble_string("eedr", [3, 1, 0, 2]) # reed
puts
puts
puts " ===== is_prime? ===== "
# Write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
# You would not be expected to already know about modulo for the
# challenge.
#
# Difficulty: medium.
def is_prime?(num)
  (2...num).all? {|x| num % x != 0}
  #Prime.prime?(num)
end
=begin
def is_prime?(num)
  return "Invalid Entry" if num <= 1
  ind = num - 1
  while ind > 1 do
    #num = num % ind
    return false if num % ind == 0
    ind -= 1
  end
  return true
end
=end
puts is_prime?(7) # true
puts is_prime?(10) # false
puts is_prime?(3) # true
puts is_prime?(2) # true
puts is_prime?(1) # exception here. false
puts is_prime?(0) # exception here. invalid
puts is_prime?(19) # true
puts is_prime?(93) # false
puts 
puts
puts " ===== nth_prime ===== "
# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.
def nth_prime(number)
  my_count, dummy = 0, 2
  while true
    if is_prime?(dummy)
      my_count += 1
      return dummy if my_count == number
    end
    dummy += 1
  end 
  
  #primes = Prime.first (number)
  #return primes.last.inspect
end
=begin
def nth_prime(number)  
  return "Invalid Entry" if number < 1
  
  def is_prime?(num)
    return "Invalid Entry" if num <= 1
    ind = num - 1
    while ind > 1 do
      return false if num % ind == 0
      ind -= 1
    end
    return true
  end
  
  my_count = 0
  dummy = 2
  while true
    if is_prime?(dummy)
      my_count += 1
      return dummy if my_count == number
    end
    dummy += 1
  end 
  
end
=end
puts nth_prime(1) # 2
puts nth_prime(2) # 3
puts nth_prime(5) # 11
puts nth_prime(17) # 59
#puts nth_prime(0) # erro
puts nth_prime(1001) # 7927
puts
puts
puts " ===== two_sum ===== "
# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.
def two_sum(arr)
  result = []
  arr.each_with_index do |elmnt1, ind1|
    arr.each_with_index do |elmnt2, ind2|
      result << "[#{ind1}, #{ind2}]" if (elmnt1 + elmnt2 == 0 and ind1 < ind2)
    end
  end
  return nil if result.empty?
  return result
end
puts two_sum([1, 3, 5, -3])
puts two_sum([1, 3, 5, 0, 0, 7, 4, -4, -7]) 
puts two_sum([1, 3, 5])
puts
puts
puts " ===== caesar_cipher ===== "
# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)
def caesar_cipher(offset, string)
  return "Invalid Entry" if offset < 0
  stringer, new_string = string.split(""), ""

  stringer.each_with_index do |lett, ind|
    if string[ind].ord == 32
      new_string << 32.chr
    elsif (stringer[ind].ord + offset).to_i <= 122
    new_string << (stringer[ind].ord + offset).chr
    else
      new_string << (stringer[ind].ord + offset - 26).chr
    end
  end
  return new_string
end
puts caesar_cipher(2, "alpha") # cnrjc
puts caesar_cipher(1, "abcxyz") # bcdyza
puts caesar_cipher(5, "almazyn") # fqrfeds
puts caesar_cipher(3, "abc xyz") # def abc
puts
puts
puts " ===== num_repeats ===== "
# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.
def num_repeats(string)
  arr = string.split("").sort
  storage = []
  counter = []
  arr.each do |char|
    if not storage.include?(char)
      storage << char
    else
      counter << char
    end
  end
  return counter.uniq.size
end
puts num_repeats("abcde") # 0
puts num_repeats("aaa") # 1
puts num_repeats("abab") # 2
puts num_repeats("mississippi") # 3
puts num_repeats("pacypkcmnoyonmlxlxqtrtsq") # 10
puts
puts
puts " ===== Miscellaneous Methods ===== "
#1
num = [1,2,3,4,5]
def doubler(arr)
    arr.map {|x| x * 2}.inspect
end
puts doubler (num)
puts doubler (["a", "b", "c"])
puts 

#2
def median_int(arr)
  sorted = arr.sort
  sorted.length.odd? ? sorted[((arr.length - 1)/2)] : 
  ((sorted[(arr.length)/2 - 1] + sorted[arr.length/2])/2.0)
end
puts median_int(num)
puts median_int([7,1,4,3,2,5,8,6])
my_array1 = *(1..100)
puts median_int(my_array1)
my_array2 = *(1..105)
puts median_int(my_array2)
puts 

#3
lion = ["a ", "lion ", "has ", "a ", "tail"]
#def arr_concat (arr_of_strings)
  #arr_of_strings.inject(0) { |dummy, element| dummy + element.to_s}
    # accum is initially set to 0, the method argument
#end
puts lion.inject(:+)
puts

(10..1).each { |i| puts i } # this example does not puts anything
#instead we could do this:
(1..10).to_a.reverse.each { |i| print "#{i} " }
puts
#or we could do this:
puts (-10..-1).map(&:abs).inspect
# we could also do this:
puts 9.downto(2) {|x| print "#{x} "} # note the diff btwn this and below
9.downto(2) {|x| print "#{x} "} # note the diff btwn this and above
puts
puts 1.step(10, 2) { |i| print "#{i} "} # note the diff btwn this and below
1.step(10, 2) { |i| print "#{i} "} # note the diff btwn this and above
puts
array = [10,20,30,40,50,60,70,80,90,100]
array.each_index {|i| print "#{array[i]} "}
puts
puts

#This code below will print out the number 11, even though 
#we've set the loop to terminate when the value of i is  
# less than 10, the loop is guaranteed to execute at least 
# once, so we get the value of i printed out once.
i=11
begin
  print "#{i} "
  i+=1
end while i < 10
puts
puts
#same with the while loop below
i=10
begin
  print "#{i} "
  i+=1
end until i == 11
puts
puts

my_favorite_number = 42
numbers = [42, 3, 42, 5]
favorite_indices = []
numbers.each_with_index do |number, index|
  if number == my_favorite_number
    favorite_indices << index
  end
end
puts favorite_indices.inspect
puts

#Nest within a nest
(1..10).each do |ii|
  multiples = []
  (1..10).each do |j|
    multiples << ii * j
  end
  puts multiples.inspect
end
puts

integers = [1, 2, 3, 4]
puts integers.map { |j| j**2 }.inspect
puts
nato = {:a => "alpha", :b => "bravo"}
puts nato.map { |key, value| value.upcase }.inspect
puts

integers = [1, 2, 3, 4]
puts integers.each {|x| x*x}.inspect # take note of this
puts integers.each {|x| x}.inspect
puts integers.map {|x| x*x}.inspect
puts

puts ("Hello world!")
puts(42)
puts (3 + 1)
puts (4 - 2)
puts (5 * 4)
puts (8 / 3)
puts
puts (11 % 2)
puts (9.0 / 2)
puts (9.fdiv(2))
puts(123 == 123) # true:
puts(!(123 == 123)) # false:

#Demorgan's Law
#(x && y) == !(!x || !y)
puts

cool_things = "Racecars, Lasers, Aeroplanes"
puts (cool_things)
# Assignment
cool_thing = "Racecars"
puts(cool_thing)

# Re-assignment
cool_thing = "Lasers"
puts(cool_thing)
puts

seven = "4".to_i + "3".to_i
puts(seven)

not_seven = "4" + "3"
puts(not_seven)

one = 1.to_s
three = 3.to_s
puts(one + three + " is an unlucky number!")

puts "7".to_i
puts 42.to_s
puts
puts(3 < 4)
puts(5 > 10)
puts(3 == 4)
puts(4 != 5)
puts("Three" == "Three")
puts

arr = [2, 3, 5, 7]
puts(arr[0]) # prints 2, the item at position zero
item = arr.shift # remove 2 from the array
puts(item) # prints 2
puts(arr == [3, 5, 7]) # prints true; the leading 2 element is removed
arr = [2, 3, 5, 7] # reset arr
puts(arr[3]) # prints 7, the last item of the array
item = arr.pop # remove 7 from array
puts(item) # prints 7
puts(arr.length) # prints 3, since there are only three items left
puts(arr == [2, 3, 5]) # prints true; only the seven is removed

arr = [2, 3, 5]
arr[1] = "three"
puts(arr == [2, "three", 5])
puts

str = "abcd"
idx = 0
while idx < str.length
  puts(str[idx])
  idx += 1
end
puts 

puts "this is a sentence".split.inspect
puts ["this", "is", "a", "sentence"].join(" ") # NB **separator**
puts ["racecars", "lasers", "aeroplanes"].join(", ")
puts 
# First, **define** the method:
def print_three_times(name)
  3.times { puts name }
end
print_three_times("Gizmo")
print_three_times("Earl")
print_three_times("Markov")
puts 

def say_hello(number_of_times)
  if number_of_times < 0
    puts("That is an invalid number of times!")
    # `return` ends the function right here!
    return
  else
    number_of_times.times { puts "Hello!"}
  end
end
say_hello(-10) # Doesn't say hello at all; never gets to the loop.
say_hello(2) # says hello two times


def smallest_square(lower_bound)
  list = (0..lower_bound).select {|i| i**2 > lower_bound}
  (list.min)**2
end
puts smallest_square(10)
puts smallest_square(77)


# block of code that will take in a number, and return its
# square
def square(num)
  # returns the result of squaring the number
  return num * num
end
puts square(3) 
puts square(7)
puts 

# search for `target_item` in `items`; return the array index
# where it first occurs
def find_item(items, target_item)
  items.each { |item| return items.index(item) if item == target_item }
=begin  
  i = 0
  while i < items.count
    current_item = items[i]
    if current_item == target_item
      return i # found item; return its index; stop here and exit the method
    end
    i += 1
  end
  return nil # return nothing and exit function
=end
end
puts find_item([1, 3, 5, 7], 5)
puts find_item(["u","o", "i", "e", "a"], "u")
puts


# The caller will give the input `number_of_squares`; 
#this method will return an array
# consisting of the squares for numbers from 0 up until
#the number specified by 'number_of_squares'.
def first_square_numbers(number_of_squares)
  my_sqrs = (0...number_of_squares).collect { |x| x**2 }
  #my_sqrs = (0...number_of_squares).select { |x| x**2 } does a
  #totally different thing. NB
  my_sqrs
end
puts first_square_numbers(5).inspect # = [0,1,4,9,16]
puts (first_square_numbers(9) - first_square_numbers(5)).inspect # = [25,..64]
puts 

# You can write an array across many lines like this.
presidents = [
  "George Washington",
  "John Adams",
  "Thomas Jefferson",
  "James Madison",
  "James Monroe",
  "John Quincy Adams"
]
presidents.each { |name| puts name }
puts "PRESIDENTS LOOP COMPLETED!"
puts

puts("I will add 5 to your number; type a number!")
input = gets
puts ".... and the answer is #{5 + input.to_i}"
puts 

puts("Type in your name!")
name = gets.chomp
puts("Oh heyy! Hello " + name + "!!")
puts

puts("Type in a number")
num = gets.to_i
if num < 10
  puts("That's not a big number!")
elsif num < 100
  puts("That's a pretty big number")
elsif num < 1000
  puts("Wow that's a large number")
else
  puts("Holy cow, that number is blowing my mind")
end
puts("Thanks for typing in a number!")
puts

puts("Input a number!")
number = gets.to_i
if (number > 10) && (number < 20)
  puts("Your number was greater than ten AND less than twenty!")
else
  puts("Your number was either less than ten, OR greater than twenty!")
end
puts

puts("Input a number!")
number = gets.to_i
if (number == 7) || (number == 13)
  puts("Your number is magic!")
else
  puts("Your number is not magical")
end
puts

puts("Input a number!")
num = gets.to_i
while num < 100
  puts("That number is too small! Try again!")
  # prompt again, re-assign `num`
  num = gets.to_i
end
puts("You typed " + num.to_s + " which is at least 100!")
puts

cool_things = []
# Continue to prompt the user for cool things until we 
#have three of them.
while cool_things.length < 3
  puts("Tell me a cool thing!")
  one_cool_thing = gets.chomp
  # This adds one item at the end of the array.
  cool_things.push(one_cool_thing)
end
puts cool_things.inspect
puts

puts("Here's some cool things in backward order:")
# Loop through and print each of the cool things.
idx = cool_things.length - 1
new_cool = []
while idx >= 0
new_cool << (cool_things[idx])
  idx = idx - 1
end
puts new_cool.inspect
puts

puts("How many square numbers do you want?")
number_of_desired_squares = gets.to_i
squares = first_square_numbers(number_of_desired_squares)
idx = 0
while idx < squares.length
  puts(squares[idx])
  idx = idx + 1
end
puts

puts("Please type GIZMO")
while true
  input = gets.chomp
  if input == "GIZMO"
    break
  end
  puts("Try typing GIZMO again!")
end
puts("THANKS FOR TYPING GIZMO")