puts arr
puts " ======================================== "
puts "                EASY_SETS                 "
puts " ======================================== "
puts

puts " ===== 01 First Reverse ====="
#Have the function FirstReverse(str) take the str parameter being passed
#and return the string in reversed order. For example: if the input string
#is "Hello World and Coders" then your program should return the string 
#"sredoC dna dlroW olleH"
#01
def FirstReverse(str)
    str.reverse       
end
puts FirstReverse("suhaibu yehuza")
puts FirstReverse("Hello World and Coders")
# 02
#def FirstReverse(str)
  #result = ""
  #result += str.slice!(-1) until str.length == 0
  #result
#end
#puts FirstReverse("suhaibu yehuza")
puts

puts " ===== 02 First Factorial ====="
#Using the Ruby language, have the function FirstFactorial(num) take 
#the num parameter being passed and return the factorial of it 
#(e.g. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, 
#the range will be between 1 and 18 and the input will always be an 
#integer. 
# 01
def FirstFactorial(num)
    num == 0 ? 1 : (1..num).reduce(:*)
end
puts FirstFactorial(5)
# 02
#def FirstFactorial(num)
    #num == 0 ? 1 : num * FirstFactorial(num - 1)
#end
puts

puts " ===== 03 Longest Word ====="
#Using the Ruby language, have the function LongestWord(sen) take the 
#sen parameter being passed and return the largest word in the string.
#If there are two or more words that are the same length, return the 
#first word from the string with that length. Ignore punctuation and 
#assume sen will not be empty. 
# 01
def LongestWord(sen)
  sen.split(" ").inject {|x, y| x.length > y.length ? x : y }
end
puts LongestWord("sam is a hippopotamus")
# 02
#def LongestWord(sen)
  #longest = ""
  #sen.scan(/\w+/).each{|word| longest = word if word.size > longest.size}
  #longest
#end
puts

puts " ===== 04 Letter Changes ====="
#Using the Ruby language, have the function LetterChanges(str) take the
#str parameter being passed and modify it using the following algorithm.
#Replace every letter in the string with the letter following it in the
#alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel 
#in this new string (a, e, i, o, u) and finally return this modified 
#string. 
# 01
def LetterChanges(str)
  string = str.tr("a-yzZA-Y","b-zaAB-Z")
  string.tr("aeiou","AEIOU")
end
puts "hello*3"
puts "hello * 3"
puts "fun times!"
puts "suhaibu yehuza"
puts

puts " ===== 05 Simple Adding ====="
#Using the Ruby language, have the function SimpleAdding(num) add up all
#the numbers from 1 to num. For example: if the input is 4 then your 
#program should return 10 because 1 + 2 + 3 + 4 = 10. For the test cases,
#the parameter num will be any number from 1 to 1000. 
# 01
def SimpleAdding(num)
    (1..num.to_i).reduce(:+)     
end
puts SimpleAdding(5)
puts SimpleAdding(10)
puts

puts " ===== 06 Letter Capitalize ====="
#Using the Ruby language, have the function LetterCapitalize(str) take 
#the str parameter being passed and capitalize the first letter of each 
#word. Words will be separated by only one space. 
# 01
def LetterCapitalize(str)
  str.gsub(/\w+/) {|word| word.capitalize}
end
puts LetterCapitalize("suhai yehuza")
puts LetterCapitalize("pope john paul")
puts

puts " ===== 07 Simple Symbols ====="
#Have the function SimpleSymbols(str) take the str parameter being 
#passed and determine if it is an acceptable sequence by either returning
#the string true or false. The str parameter will be composed of + and = 
#symbols with several letters between them (ie. ++d+===+c++==a) and for 
#the string to be true each letter must be surrounded by a + symbol. 
#So the string to the left would be false. The string will not be empty 
#and will have at least one letter. 
def SimpleSymbols(str)
  str.scan(/[a-zA-Z]/).all? {|w| str[(str.index(w)).to_i - 1] == "+" and 
  str[(str.index(w)).to_i + 1] == "+" and str.index(w) != 0}
end
puts SimpleSymbols("+d+=3=+s+")
puts SimpleSymbols("+dd+=3=+s+")
puts SimpleSymbols("f++d+")
puts SimpleSymbols(" f++d+")
puts SimpleSymbols("f++d+d") 
puts

puts " ===== 08 Check Nums ====="
#Using the Ruby language, have the function CheckNums(num1,num2) take 
#both parameters being passed and return the string true if num2 is 
#greater than num1, otherwise return the string false. If the parameter 
#values are equal to each other then return the string -1.
# 01
def CheckNums(num1, num2)
  return "-1" if num1 == num2
  num2 > num1
end
puts CheckNums(8,8) # -1
puts CheckNums(8,7) # false
puts CheckNums(8,9) # true
puts

puts " ===== 09 Time Convert ====="
#Using the Ruby language, have the function TimeConvert(num) take the num
#parameter being passed and return the number of hours and minutes the 
#parameter converts to (ie. if num = 63 then the output should be 1:3).
#Separate the number of hours and minutes with a colon. 
# 01
def TimeConvert(num)
    hours = num / 60
    min = num % 60
    return hours.to_s + ':' + min.to_s if min > 9
    return hours.to_s + ':0' + min.to_s
end
puts TimeConvert(8)
puts TimeConvert(88)
puts TimeConvert(848)
puts

puts " ===== 10 Alphabet Soup ====="
#Have the function AlphabetSoup(str) take the str string parameter being
#passed and return the string with the letters in alphabetical order 
#(ie. hello becomes ehllo). Assume numbers and punctuation symbols will 
#not be included in the string. 
# 01
def AlphabetSoup(str)
    str.split("").sort.join("")
end
puts AlphabetSoup("suhaibu")
puts AlphabetSoup("suhaibu yehuza is male")
puts

puts " ===== 11 AB Check ====="
#Have the function ABCheck(str) take the str parameter being passed and 
#return the string true if the characters a and b are separated by 
#exactly 3 places anywhere in the string at least once 
#(ie. "lane borrowed" would result in true because there is exactly 
#three characters between a and b). Otherwise return the string false. 
def ABCheck(str)
  str.downcase.chars.each_with_index do |c, i| 
    return true if c == "a" && (str[i+4] == "b" || str[i-4] == "b")
  end
  false
end
puts ABCheck("After Badly")
puts ABCheck("Laura sobs")
puts ABCheck("adfjBfggk")
puts ABCheck("bfjfahkkl")
puts ABCheck("sfdbcdeahd")
puts ABCheck("afhioejkkbsefv")
puts ABCheck("afhioejkkbsef") # the code wraps around to make this true
puts

puts " ===== 12 Vowel Count ====="
#Using the Ruby language, have the function VowelCount(str) take the str 
#string parameter being passed and return the number of vowels the 
#string contains (ie. "All cows eat grass and moo" would return 8). 
#Do not count y as a vowel for this challenge. 
def VowelCount(str)
    str.downcase.scan(/[aeiou]/).count 
end
puts VowelCount("mississippi")
puts VowelCount("Pope John Paul")
puts 

puts " ===== 13 Word Count ====="
#Using the Ruby language, have the function WordCount(str) take the str 
#string parameter being passed and return the number of words the string 
#contains (e.g. "Never eat shredded wheat or cake" would return 6). 
#Words will be separated by single spaces. 
def WordCount(str)
  str.downcase.split(" ").count    
end
puts WordCount("Suhai Yehuza")
puts WordCount("Pope John Paul")
puts WordCount("a LION has a tail, it has a bigh head")
puts

puts " ===== 14 Ex Oh ====="
#Using the Ruby language, have the function ExOh(str) take the str 
#parameter being passed and return the string true if there is an equal 
#number of x's and o's, otherwise return the string false. Only these 
#two letters will be entered in the string, no punctuation or numbers. 
#For example: if str is "xooxxxxooxo" then the output should return 
#false because there are 6 x's and 5 o's. 
# 01
def ExOh(str)
  x, o = 0, 0
  str.downcase.chars{|char| (x += 1 if char == "x") or (o += 1 if char == "o") }
  x == o
end
puts ExOh("xoxoxoxoxo")
puts ExOh("xoxoxoxoxox")
puts ExOh("mix me some kale")
puts

puts " ===== 15 Palindrome ====="
#Using the Ruby language, have the function Palindrome(str) take the str
#parameter being passed and return the string true if the parameter is a
#palindrome, (the string is the same forward as it is backward) 
#otherwise return the string false. For example: "racecar" is also 
#"racecar" backwards. Punctuation and numbers will not be part of the 
#string. 
# 01
#def Palindrome(str)
  #str.downcase == str.doncase.reverse
#end
def Palindrome(str)
  str.scan(/\w/).join('') == str.reverse.scan(/\w/).join('')
end
puts Palindrome("dont nod")
puts Palindrome("palindrome")
puts Palindrome("do geese see god")
puts Palindrome("Do geese see god") # fails b/c of 'D'. needs modification
puts Palindrome("never odd or even")
puts

puts " ===== 16 Arith Geo ====="
#Using the Ruby language, have the function ArithGeo(arr) take the array
#of numbers stored in arr and return the string "Arithmetic" if the 
#sequence follows an arithmetic pattern or return "Geometric" if it 
#follows a geometric pattern. If the sequence doesn't follow either 
#pattern return -1. An arithmetic sequence is one where the difference 
#between each of the numbers is consistent, where as in a geometric 
#sequence, each term after the first is multiplied by some constant or 
#common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: 
#[2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will
#not be entered, and no array will contain all the same elements. 
# 01
#def ArithGeo(arr)
  #(0...arr.size -1) do |i|
    #return "Arithmetic" if arr.all?{(arr[i+1].to_i - arr[i].to_i) == (arr[i+2].to_i - arr[i+1].to_i)}
    #return "Geometric" if arr.all?{(arr[i+1].to_i / arr[i].to_i) == (arr[i+2].to_i / arr[i+1].to_i)}
    #return (-1)
  #end
#end
def ArithGeo(arr)
  arithmetic = (0...arr.length-1).map{|idx| arr[idx+1] - arr[idx]}.uniq.count
  geometric = (0...arr.length-1).map{|idx| arr[idx+1] / arr[idx]}.uniq.count
  return "Arithmetic" if arithmetic == 1
  return "Geometric" if geometric == 1
  return -1
end
puts ArithGeo([1,10,100,1000]) # Geometric
puts ArithGeo([1,4,7,10,13,16]) # Arithmetic
puts ArithGeo([1,10,5,19]) # -1
puts ArithGeo([1,2,3,4,5,10,20]) # -1
puts ArithGeo([1,2,3,4,5,6,7,88,2]) # -1
puts ArithGeo([10,110,210,310,410,511]) # -1
puts

puts " ===== 17 Array Addition I ====="
#Using the Ruby language, have the function ArrayAdditionI(arr) take the
#array of numbers stored in arr and return the string true if any 
#combination of numbers in the array can be added up to equal the largest
#number in the array, otherwise return the string false. For example: if 
#arr contains [4, 6, 23, 10, 1, 3] the output should return true because
#4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all 
#the same elements, and may contain negative numbers. 
def ArrayAdditionI(arr)
  sums = []
  largest = arr.sort!.pop
  1.upto(arr.length){|i| arr.combination(i).to_a.each{|nums| sums << nums.reduce(:+) }}
  
  sums.include?(largest)
end
puts ArrayAdditionI([4, 6, 23, 10, 1, 3])
puts ArrayAdditionI([5,7,16,1,2])
puts ArrayAdditionI([3,5,-1,8,12])
puts

puts " ===== 18 Letter Count I ====="
#Using the Ruby language, have the function LetterCountI(str) take the 
#str parameter being passed and return the first word with the greatest 
#number of repeated letters. For example: "Today, is the greatest day 
#ever!" should return greatest because it has 2 e's (and 2 t's) and it 
#comes before ever which also has 2 e's. If there are no words with 
#repeating letters return -1. Words will be separated by spaces. 
# 01
def LetterCountI(str)
  greatest, count, words = -1, 0, str.scan(/\S+/)
  
  words.each do |word|
    current = 0
    word.downcase.chars{|c| current += 1 if word.count(c) > 1 }
    greatest = word and count = current if current > count
  end
  
  greatest
end
puts LetterCountI("Hello apple pie")
puts LetterCountI("He is just a boy")
puts LetterCountI("Walawala is a small town")
puts

puts " ===== 19 Second GreatLow ====="
#Using the Ruby language, have the function SecondGreatLow(arr) take the
#array of numbers stored in arr and return the second lowest and second
#greatest numbers, respectively, separated by a space. For example: if 
#arr contains [7, 7, 12, 98, 106] the output should be 12 98. The array 
#will not be empty and will contain at least 2 numbers. It can get 
#tricky if there's just two numbers!
# 01
def SecondGreatLow(arr)
  arr.uniq.length == 1 ? "#{arr[0]} #{arr[0]}" : "#{arr.uniq.sort[1]} #{arr.uniq.sort[-2]}"
end
puts SecondGreatLow([1, 42, 42, 180]) # 42 42
puts SecondGreatLow([10,20]) # 20 10
puts SecondGreatLow([7, 7, 12, 98, 106]) # 12 98
puts

puts " ===== 20 Division Stringfield ====="
#Using the Ruby language, have the function DivisionStringified(num1,num2)
#take both parameters being passed, divide num1 by num2, and return the 
#result as a string with properly formatted commas. If an answer is only 
#3 digits long, return the number with no commas (ie. 2 / 3 should output 
#"1"). For example: if num1 is 123456789 and num2 is 10000 the output 
#should be "12,346".
def DivisionStringified(num1,num2)
  (num1.to_f / num2.to_f).round.to_s.reverse.scan(/\d?\d?\d/).join(',').reverse
end
puts DivisionStringified(5,2)
puts DivisionStringified(6874,67)
puts DivisionStringified(123456789,10000)
puts

puts " ===== 21 Counting Minutes I ====="
#Using the Ruby language, have the function CountingMinutesI(str) take 
#the str parameter being passed which will be two times (each properly 
#formatted with a colon and am or pm) separated by a hyphen and return 
#the total number of minutes between the two times. The time will be in 
#a 12 hour clock format. For example: if str is 9:00am-10:00am then the 
#output should be 60. If str is 1:00pm-11:00am the output should be 1320.
# 01
#def CountingMinutesI(str)
  
  #times = str.split('-').map{|t| t.scan(/\w?\w/).map{|s| "ampm".include?(s) ? s : s.to_i }}
  #hour, minute, meridiem = times.first
  #end_hour, end_minute, end_meridiem = times.last

  #total = 0
  #until hour == end_hour && minute == end_minute && meridiem == end_meridiem
  #  minute += 1 and total += 1
    
    #if minute == 60
      #hour -= 12 if hour == 12
      #(meridiem == "pm" ? meridiem = "am" : meridiem = "pm") if hour == 11
      #minute -= 60 and hour += 1
    #end
  #end
  
  #total       
#end
def CountingMinutesI(str)  
	begin_str, end_str = str.split("-")[0], str.split("-")[1] 
	
	if begin_str[1] == ":" 
		begin_str = "0" + begin_str
	end 
	if end_str[1] == ":" 
		end_str = "0" + end_str
	end 
	
	begin_hour = begin_str[0..1].to_i  
	begin_min = begin_str[3..4].to_i
	begin_period = begin_str[5] 
	end_hour = end_str[0..1].to_i 
	end_min = end_str[3..4].to_i 
	end_period = end_str[5] 

	if begin_period == "p" && begin_hour != 12 
		begin_hour += 12 
	elsif begin_period == "a" && begin_hour == 12 
		begin_hour = 0 
	elsif end_period == "p" && end_hour != 12 
		end_hour += 12 
	elsif end_period == "a" && end_hour == 12 
		end_hour = 0 
	end
	
	begin_time, end_time = (begin_hour * 60 + begin_min), (end_hour * 60 + end_min)
	begin_time <= end_time ? (end_time - begin_time) : (end_time - begin_time) + (24*60)
	
end 
puts CountingMinutesI("9:00am-10:00am") # 60
puts CountingMinutesI("1:00pm-11:00am") # 1320
puts CountingMinutesI("1:23am-1:08am") # 1425
puts

puts " ===== 22 Mean Mode ====="
#Using the Ruby language, have the function MeanMode(arr) take the array 
#of numbers stored in arr and return 1 if the mode equals the mean, 0 if 
#they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 because
#the mode (3) equals the mean (3)). The array will not be empty, will 
#only contain positive integers, and will not contain more than one mode. 
# 01
def MeanMode(arr)
  mean = arr.inject(:+)/(arr.length)
  mode = arr.select{|r| arr.count(r) > 1}.uniq
  mean == mode[0] ? 1 : 0
end
puts MeanMode([5, 3, 3, 3, 1]) # 3
puts MeanMode([1, 2, 3]) # 0
puts MeanMode([4, 4, 4, 6, 2]) # 1
puts

puts " ===== 23 Dash Insert ====="
#Using the Ruby language, have the function DashInsert(str) insert dashes
#('-') between each two odd numbers in str. For example: if str is 454793
#the output should be 4547-9-3. Don't count zero as an odd number. 
# 01
def DashInsert(str)
  str.chars.map.with_index{|n, i| (n.to_i.odd? && str[i- 1].to_i.odd? && i != 0) ? "-" + n : n }.join('')
end
puts DashInsert("454793")
puts DashInsert("99946")
puts DashInsert("56730")
puts 

puts " ===== 24 Swap Case ====="
#Using the Ruby language, have the function SwapCase(str) take the str 
#parameter and swap the case of each character. For example: if str is 
#"Hello World" the output should be hELLO wORLD. Let numbers and symbols 
#stay the way they are.
# 01
def SwapCase(str)
  str.swapcase
end
puts SwapCase("Sup DUDE!!?")
puts SwapCase("alHRiGENo")
puts SwapCase("beZINo")
puts

puts " ===== 25 Number Addition ====="
#Using the Ruby language, have the function NumberSearch(str) take the 
#str parameter, search for all the numbers in the string, add them 
#together, then return that final number. For example: if str is 
#"88Hello 3World!" the output should be 91. You will have to differentiate
#between single digit numbers and multiple digit numbers like in the 
#example above. So "55Hello" and "5Hello 5" should return two different 
#answers. Each string will contain at least one letter or symbol. 
# 01
def NumberAddition(str)
  str.scan(/\d+/).map(&:to_i).inject(0, :+)
end
puts NumberAddition("88Hello 3World!") # 91
puts NumberAddition("75Number9") # 84
puts NumberAddition("10 2One Number*1*") # 13
puts

puts " ===== 26 Third Greatest ====="
#Using the Ruby language, have the function ThirdGreatest(strArr) take 
#the array of strings stored in strArr and return the third largest word 
#within in. So for example: if strArr is ["hello", "world", "before", 
#"all"] your output should be world because "before" is 6 letters long, 
#and "hello" and "world" are both 5, but the output should be world 
#because it appeared as the last 5 letter word in the array. If strArr 
#was ["hello", "world", "after", "all"] the output should be after because 
#the first three words are all 5 letters long, so return the last one. 
#The array will have at least three strings and each string will only 
#contain letters. 
# 01
def ThirdGreatest(strArr)
  first, second, third = "", "", ""
  
  strArr.each do |word|
    if word.length > first.length
      third, second, first = second, first, word
    elsif word.length > second.length
      third, second = second, word
    elsif word.length > third.length
      third = word
    end
  end
  third
end
puts ThirdGreatest(["coder","byte","code"]) # code
puts ThirdGreatest(["hello", "world", "before", "all"] ) # world
puts ThirdGreatest(["abc","defg","z","hijk"]) # abc
puts

puts " ===== 27 Powers of Two ====="
#Using the Ruby language, have the function PowersofTwo(num) take the num
#parameter being passed which will be an integer and return the string 
#true if it's a power of two. If it's not return the string false. For 
#example if the input is 16 then your program should return the string 
#true but if the input is 22 then the output should be the string false.
# 01
#def PowersofTwo(num)
  #(num & (num - 1)) == 0 ? "true" : "false"
#end
def PowersofTwo(num)
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
puts PowersofTwo(8) # true
puts PowersofTwo(4) # true
puts PowersofTwo(124) # false
puts

puts " ===== 28 Additive Persistence ====="
#Using the Ruby language, have the function AdditivePersistence(num) take
#the num parameter being passed which will always be a positive integer 
#and return its additive persistence which is the number of times you must
#add the digits in num until you reach a single digit. For example: if num
#is 2718 then your program should return 2 because 2 + 7 + 1 + 8 = 18 and
#1 + 8 = 9 and you stop at 9. 
# 01
#def AdditivePersistence(num)
  #count = 0
  #count += 1 and num = num.to_s.chars.map(&:to_i).inject(:+) until num < 10
  #count
#end
def AdditivePersistence(num)
  num_s, count = num.to_s, 0
  while num_s.length != 1
     num_s = num_s.chars.map(&:to_i).reduce(:+).to_s
     count += 1
  end
  return count 
end
puts AdditivePersistence(2718) # 2
puts AdditivePersistence(8) # 0
puts AdditivePersistence(4678208) # 2
puts

puts " ===== 29 Multiplicative Persistence ====="
#Using the Ruby language, have the function MultiplicativePersistence(num)
#take the num parameter being passed which will always be a positive integer
#and return its multiplicative persistence which is the number of times you
#must multiply the digits in num until you reach a single digit. For example:
#if num is 39 then your program should return 3 because 3 * 9 = 27 then 
#2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4. 
# 01
#def MultiplicativePersistence(num)
  #count = 0
  #count += 1 and num = num.to_s.chars.map(&:to_i).reduce(1, :*) until num < 10
  #count
#end
def MultiplicativePersistence(num)
  num_s, count = num.to_s, 0
  while num_s.length != 1
     num_s = num_s.chars.map(&:to_i).reduce(1, :*).to_s
     count += 1
  end
  return count 
end
puts MultiplicativePersistence(39) # 3
puts MultiplicativePersistence(25) # 2
puts MultiplicativePersistence(13439) # 3
puts

puts " ===== 30 Off Line Minimum ====="
#Using the Ruby language, have the function OffLineMinimum(strArr) take the 
#strArr parameter being passed which will be an array of integers ranging from 1
#...n and the letter "E" and return the correct subset based on the following 
#rules. The input will be in the following format: ["I","I","E","I",...,"E",...,"I"] 
#where the I's stand for integers and the E means take out the smallest integer
#currently in the whole set. When finished, your program should return that new
#set with integers separated by commas. For example: if strArr is 
#["5","4","6","E","1","7","E","E","3","2"] then your program should return 4,1,5. 
def OffLineMinimum(strArr)
  nums, result = [], []
  strArr.each{ |char| char == "E" ? result << nums.sort!.shift : nums << char.to_i }
  result.join(',')
end
puts OffLineMinimum(["5","4","6","E","1","7","E","E","3","2"]) # 4,1,5
puts OffLineMinimum(["1","2","E","E","3"]) # 1,2
puts OffLineMinimum(["4","E","1","E","2","E","3","E"]) # 4,1,2,3
puts

puts " ===== 31 Changing Sequence ====="
#Using the Ruby language, have the function ChangingSequence(arr) take the array
#of numbers stored in arr and return the index at which the numbers stop increasing
#and begin decreasing or stop decreasing and begin increasing. For example: if arr
#is [1, 2, 4, 6, 4, 3, 1] then your program should return 3 because 6 is the last
#point in the array where the numbers were increasing and the next number begins
#a decreasing sequence. The array will contain at least 3 numbers and it may 
#contains only a single sequence, increasing or decreasing. If there is only a 
#single sequence in the array, then your program should return -1. Indexing should
#begin with 0. 
# 01
def sequence(num1, num2)
  (num2 - num1) / (num2 - num1).abs 
end
# =======================================
def ChangingSequence(arr)
  original = sequence(arr[0], arr[1])
  arr.each_index{|i| return i if i < arr.length- 1 && sequence(arr[i], arr[i+ 1]) != original }
  -1 
end
puts ChangingSequence([1, 2, 4, 6, 4, 3, 1]) # 3
puts ChangingSequence([-4, -2, 9, 10]) # -1
puts ChangingSequence([5, 4, 3, 2, 10, 11]) # 3
puts

puts " ===== 32 Overlapping Ranges ====="
#Using the Ruby language, have the function OverlappingRanges(arr) take the array
#of numbers stored in arr which will contain 5 positive integers, the first two
#representing a range of numbers (a to b), the next 2 also representing another 
#range of integers (c to d), and a final 5th element (x) which will also be a 
#positive integer, and return the string true if both sets of ranges overlap by
#at least x numbers. For example: if arr is [4, 10, 2, 6, 3] then your program 
#should return the string true. The first range of numbers are 4, 5, 6, 7, 8, 9, 10 
#and the second range of numbers are 2, 3, 4, 5, 6. The last element in the array
#is 3, and there are 3 numbers that overlap between both ranges: 4, 5, and 6. 
#If both ranges do not overlap by at least x numbers, then your program should 
#return the string false. 
# 01
def OverlappingRanges(arr)
  overlapped = ([arr[0], arr[2]].max..[arr[1], arr[3]].min).to_a.length
  overlapped >= arr[4]
end
puts OverlappingRanges([4, 10, 2, 6, 3]) # true
puts OverlappingRanges([5,11,1,5,1]) # true
puts OverlappingRanges([1,8,2,4,4]) # false
puts

puts " ===== 33 Superincreasing ====="
#Using the Ruby language, have the function Superincreasing(arr) take the array
#of numbers stored in arr and determine if the array forms a superincreasing 
#sequence where each element in the array is greater than the sum of all 
#previous elements. The array will only consist of positive integers. For example:
#if arr is [1, 3, 6, 13, 54] then your program should return the string "true" 
#because it forms a superincreasing sequence. If a superincreasing sequence isn't
#formed, then your program should return the string "false" 
def Superincreasing(arr)
  arr.each_with_index{|num, i| return false if arr.slice(0, i).reduce(0, :+) >= num }
  true
end 
puts Superincreasing([1, 3, 6, 13, 54] ) # true
puts Superincreasing([1,2,3,4]) # false
puts Superincreasing([1,2,5,10]) # true
puts

puts " ===== 34 Hamming Distance ====="
#Using the Ruby language, have the function HammingDistance(strArr) take the array
#of strings stored in strArr, which will only contain two strings of equal length
#and return the Hamming distance between them. The Hamming distance is the number
#of positions where the corresponding characters are different. For example: if 
#strArr is ["coder", "codec"] then your program should return 1. The string will
#always be of equal length and will only contain lowercase characters from the 
#alphabet and numbers.
# 01
def HammingDistance(strArr)
  count, indices = 0, strArr[0].length
  indices.times{|i| count += 1 if strArr.first[i] != strArr.last[i] }
  count
end
puts HammingDistance(["coder", "codec"]) # 1
puts HammingDistance(["10011", "10100"]) # 3
puts HammingDistance(["helloworld", "worldhello"])# 8
puts

puts " ===== 35 Rectangle Area ====="
#Using the Ruby language, have the function RectangleArea(strArr) take the array
#of strings stored in strArr, which will only contain 4 elements and be in the 
#form (x y) where x and y are both integers, and return the area of the rectangle
#formed by the 4 points on a Cartesian grid. The 4 elements will be in arbitrary 
#order. For example: if strArr is ["(0 0)", "(3 0)", "(0 2)", "(3 2)"] then your
#program should return 6 because the width of the rectangle is 3 and the height
#is 2 and the area of a rectangle is equal to the width * height. 
# 01
def RectangleArea(strArr)
  grid = strArr.map{|coords| coords.scan(/\d+/).map(&:to_i)}.sort
  area = ((grid[2][0] - grid[0][0]) * (grid[1][1] - grid[0][1])).abs
end
puts RectangleArea(["(0 0)", "(3 0)", "(0 2)", "(3 2)"]) # 6
puts RectangleArea(["(1 1)","(1 3)","(3 1)","(3 3)"]) # 4
puts RectangleArea(["(0 0)","(1 0)","(1 1)","(0 1)"]) # 1
puts

puts " ===== 36 Bitwise One ====="
#Using the Ruby language, have the function BitwiseOne(strArr) take the array of
#strings stored in strArr, which will only contain two strings of equal length 
#that represent binary numbers, and return a final binary string that performed 
#the bitwise OR operation on both strings. A bitwise OR operation places a 0 in
#the new string where there are zeroes in both binary strings, otherwise it place
#s a 1 in that spot. For example: if strArr is ["1001", "0100"] then your program
#should return the string "1101"
def BitwiseOne(strArr)
  result = ""
  first, second = strArr
  0.upto(first.length - 1) {|i| first[i] == "0" && second[i] == "0" ? result += "0" : result += "1" }
  result
end
puts BitwiseOne(["1001", "0100"]) # 1101
puts BitwiseOne(["100", "000"]) # 100
puts BitwiseOne(["00011", "01010"]) # 01011
puts

puts " ===== 37 Other Products ====="
#Using the Ruby language, have the function OtherProducts(arr) take the array of
#numbers stored in arr and return a new list of the products of all the other 
#numbers in the array for each element. For example: if arr is [1, 2, 3, 4, 5] 
#then the new array, where each location in the new array is the product of all 
#other elements, is [120, 60, 40, 30, 24]. The following calculations were 
#performed to get this answer: [(2*3*4*5), (1*3*4*5), (1*2*4*5), (1*2*3*5), 
#(1*2*3*4)]. You should generate this new array and then return the numbers as 
#a string joined by a hyphen: 120-60-40-30-24. The array will contain at most 10
#elements and at least 1 element of only positive integers. 
def OtherProducts(arr)
  arr.map{|n| arr.reduce(:*) / n }.join("-")
end
puts OtherProducts([1, 2, 3, 4, 5]) # [120-60-40-30-24]
puts OtherProducts([1,4,3]) # [12-3-4]
puts OtherProducts([3,1,2,6]) # [12-36-18-6]
puts

puts " ===== 38 Wave Sorting ====="
#Using the Ruby language, have the function WaveSorting(arr) take the array of 
#positive integers stored in arr and return the string true if the numbers can 
#be arranged in a wave pattern: a1 > a2 < a3 > a4 < a5 > ..., otherwise return 
#the string false. For example, if arr is: [0, 1, 2, 4, 1, 4], then a possible 
#wave ordering of the numbers is: [2, 0, 4, 1, 4, 1]. So for this input your 
#program should return the string true. The input array will always contain at 
#least 2 elements. More examples are given below as sample test cases.
def WaveSorting(arr)
  arr.each{|num| return false if arr.count(num) > (arr.length / 2.0) }
  true
end
puts WaveSorting([0, 1, 2, 4, 1, 4]) # true
puts WaveSorting([0, 1, 2, 4, 1, 1, 1]) # false
puts WaveSorting([0, 4, 22, 4, 14, 4, 2]) # true
puts

puts " ===== 39 Array Matching ====="
#Using the Ruby language, have the function ArrayMatching(strArr) read the array
#of strings stored in strArr which will contain only two elements, both of which
#will represent an array of positive integers. For example: if strArr is 
#["[1, 2, 5, 6]", "[5, 2, 8, 11]"], then both elements in the input represent two
#integer arrays, and your goal for this challenge is to add the elements in 
#corresponding locations from both arrays. For the example input, your program 
#should do the following additions: [(1 + 5), (2 + 2), (5 + 8), (6 + 11)] which
#then equals [6, 4, 13, 17]. Your program should finally return this resulting 
#array in a string format with each element separated by a hyphen: 6-4-13-17. 

#If the two arrays do not have the same amount of elements, then simply append 
#the remaining elements onto the new array (example shown below). Both arrays 
#will be in the format: [e1, e2, e3, ...] where at least one element will exist
#in each array. 
#def ArrayMatching(strArr)
  #short, long = strArr.map{|arr| arr.scan(/\d+/).map(&:to_i)}.sort{|x, y| x.size <=> y.size }
  #result = long.map.with_index{|num, i| i < short.size ? num += short[i] : num }.join("-")
#end
#def ArrayMatching(strArr)
  #arr1 = strArr[0].scan(/\d+/).map(&:to_i) 
  #arr2 = strArr[1].scan(/\d+/).map(&:to_i)
  #new_arr = []
  #if arr1.count == arr2.count
    #arr1.each { |i| new_arr << (i.to_i + arr2[arr1.index(i)].to_i) }
  #elsif arr1.count < arr2.count
    #arr1.each { |i| new_arr << (i.to_i + arr2[arr1.index(i)].to_i) }
    #new_arr << arr2[(arr1.count)..(arr2.count-1)]
  #elsif arr1.count > arr2.count
    #arr2.each { |i| new_arr << (i.to_i + arr1[arr2.index(i)].to_i) }
    #new_arr << arr1[(arr2.count)..(arr1.count-1)]
  #end
  #new_arr.join("-")
#end

def ArrayMatching(strArr)
  arr1, arr2= strArr[0].scan(/\d+/).map(&:to_i), strArr[1].scan(/\d+/).map(&:to_i)
  arr1.length > arr2.length ? top = arr1.length : top = arr2.length
  final = []
  0.upto(top-1) do |i|
      if arr1[i] != nil && arr2[i] != nil
          final << (arr1[i] + arr2[i])
      elsif arr1[i] != nil
          final << arr1[i]
      elsif arr2[i] !=nil
          final << arr2[i]
      end
  end
  return final.join("-")
end
puts ArrayMatching(["[1, 2, 5, 6]", "[5, 2, 8, 11]"]) # [6-4-13-17]
puts ArrayMatching(["[5, 2, 3]", "[2, 2, 3, 10, 6]"]) # [7-4-6-10-6]
puts ArrayMatching(["[1, 2, 1]", "[2, 1, 5, 2]"]) # [3-3-6-2]
puts

puts " ===== 40 Binary Reversal ====="
#Using the Ruby language, have the function BinaryReversal(str) take the str 
#parameter being passed, which will be a positive integer, take its binary 
#representation, reverse that string of bits, and then finally return the new 
#reversed string in decimal form. For example: if str is "47" then the binary 
#version of this integer is 00101111. Your program should reverse this binary 
#string which then becomes: 11110100 and then finally return the decimal version
#of this string, which is 244.
#def BinaryReversal(str, digits= 8)
  #binary = str.to_i.to_s(2).reverse
  
  #digits += 8 until digits >= binary.length
  #binary += "0" until binary.length == digits
  
  #binary.to_i(2)
#end
def num_to_binary(num) 
	binary = ""
	until num == 0 
		binary = (num%2).to_s + binary 
		num = num/2 
	end
	binary.length % 8 != 0 ? "0"*(8-(binary.length % 8)) + binary : binary
end 
#================================================
def binary_to_num(binary) 
	num = 0 
	binary.reverse!
	(0..binary.length-1).each { |i| num += binary[i].to_i * (2**i) }
	num 
end
#================================================
def BinaryReversal(str) 
	binary = num_to_binary(str.to_i).reverse!
	binary_to_num(binary).to_s 
end 	
puts BinaryReversal("47") # 244
puts BinaryReversal("213") # 171
puts BinaryReversal("4567") # 60296
puts

puts " ===== 41 Longest Increasing Sequence ====="
#Using the Ruby language, have the function LongestIncreasingSequence(arr) take
#the array of positive integers stored in arr and return the length of the longest
#increasing subsequence (LIS). A LIS is a subset of the original list where the
#numbers are in sorted order, from lowest to highest, and are in increasing order.
#The sequence does not need to be contiguous or unique, and there can be several
#different subsequences. For example: if arr is [4, 3, 5, 1, 6] then a possible
#LIS is [3, 5, 6], and another is [1, 6]. For this input, your program should 
#return 3 because that is the length of the longest increasing subsequence.
def longest_subsequence(arr)
  longest = 1
  arr.each_with_index do |value, idx|
    idx2, length = (idx + 1), 1
    while idx2 < arr.length
      current = arr[idx2]
      length += 1 and value = current if current > value
      idx2 += 1
    end
    longest = length if length > longest
  end
  longest
end
# ===================================
def LongestIncreasingSequence(arr)
  longest = longest_subsequence(arr)
  
  2.upto(arr.length- 1) do |length|
    sequences = arr.combination(length).to_a
    sequences.each do |seqArr|
      current = longest_subsequence(seqArr)
      longest = current if current > longest
    end
  end
    
  longest
end
puts LongestIncreasingSequence([4, 3, 5, 1, 6]) # 3
puts LongestIncreasingSequence([9, 9, 4, 2]) # 1
puts LongestIncreasingSequence([10, 22, 9, 33, 21, 50, 41, 60, 22, 68, 90]) # 7
puts

puts " ===== 42 Even Pairs ====="
#Using the Ruby language, have the function EvenPairs(str) take the str parameter
#being passed and determine if a pair of adjacent even numbers exists anywhere in 
#the string. If a pair exists, return the string true, otherwise return false. 
#For example: if str is "f178svg3k19k46" then there are two even numbers at the 
#end of the string, "46" so your program should return the string true. Another 
#example: if str is "7r5gg812" then the pair is "812" (8 and 12) so your program
#should return the string true.
# 01
def EvenPairs(str)
  str.scan(/\d+/).each do |current|
    current.length.times do |i|
      first, second = current[0...i].to_i, current[i..-1].to_i
      return true if first.even? && second.even? && ![first, second].include?(0)
    end
  end
  false
end
puts EvenPairs("7r5gg812") # true
puts EvenPairs("3gy41d216") # true
puts EvenPairs("f09r27i8e67") # false
puts

puts " ===== 43 Next Palindrome ====="
#Using the Ruby language, have the function NextPalindrome(num) take the num 
#parameter being passed and return the next largest palindromic number. The input
#can be any positive integer. For example: if num is 24, then your program should
#return 33 because that is the next largest number that is a palindrome. 
def NextPalindrome(num)
  num += 1
  num.to_s == num.to_s.reverse ? num : NextPalindrome(num)
end
puts NextPalindrome(24) # 33
puts NextPalindrome(2) # 3
puts NextPalindrome(180) # 181
puts

puts " ===== 44 Largest Pair ====="
#Using the Ruby language, have the function LargestPair(num) take the num parameter
#being passed and determine the largest double digit number within the whole number.
#For example: if num is 4759472 then your program should return 94 because that is
#the largest double digit number. The input will always contain at least two 
#positive digits. 
def LargestPair(num)
  greatest, digits = nil, num.to_s
  
  0.upto(digits.length - 2) do |idx|
    current = digits.slice(idx, 2).to_i
    greatest = current if greatest.nil? || current > greatest
  end
  
  greatest  
end
puts LargestPair(4759472) # 94
puts LargestPair(453857) # 85
puts LargestPair(363223311) # 63
puts

puts " ===== 45 Nonrepeating Character ====="
#Using the Ruby language, have the function NonrepeatingCharacter(str) take the
#str parameter being passed, which will contain only alphabetic characters and 
#spaces, and return the first non-repeating character. For example: if str is 
#"agettkgaeee" then your program should return k. The string will always contain
#at least one character and there will always be at least one non-repeating 
#character. 
def NonrepeatingCharacter(str)
  str.chars.keep_if{|char| str.count(char) == 1}.first
end
puts NonrepeatingCharacter("agettkgaeee") # k
puts NonrepeatingCharacter("abcdef") # a
puts NonrepeatingCharacter("hello world hi hey") # w
puts

puts " ===== 46 Two Sum ====="
#Using the Ruby language, have the function TwoSum(arr) take the array of integers
#stored in arr, and determine if any two numbers (excluding the first element) 
#in the array can sum up to the first element in the array. For example: if arr 
#is [7, 3, 5, 2, -4, 8, 11], then there are actually two pairs that sum to the 
#number 7: [5, 2] and [-4, 11]. Your program should return all pairs, with the 
#numbers separated by a comma, in the order the first number appears in the array. 
#Pairs should be separated by a space. So for the example above, your program 
#would return: 5,2 -4,11 

#If there are no two numbers that sum to the first element in the array, return -1 
def TwoSum(arr)
  first, pairs, result = arr.shift, arr.combination(2).to_a, []
  pairs.each{|pair| result << pair.join(",") if pair.reduce(:+) == first }
  
  result.empty? ? -1 : result.join(" ")
end
puts TwoSum([7, 3, 5, 2, -4, 8, 11]) # 5,2 -4,11
puts TwoSum([17, 4, 5, 6, 10, 11, 4, -3, -5, 3, 15, 2, 7]) # 6,11 10,7 15,2
puts TwoSum([7, 6, 4, 1, 7, -2, 3, 12]) # 6,1 4,3
puts

puts " ===== 47 Bitwise Two ====="
#Using the Ruby language, have the function BitwiseTwo(strArr) take the array of
#strings stored in strArr, which will only contain two strings of equal length 
#that represent binary numbers, and return a final binary string that performed 
#the bitwise AND operation on both strings. A bitwise AND operation places a 1 
#in the new string where there is a 1 in both locations in the binary strings, 
#otherwise it places a 0 in that spot. For example: if strArr is ["10111", "01101"] 
#then your program should return the string "00101" 
def BitwiseTwo(strArr)
  result = ""
  0.upto(strArr[0].length - 1){ |idx| strArr[0][idx] == "1" && strArr[1][idx] == "1" ? result += "1" : result += "0" }
  result
end
puts BitwiseTwo(["10111", "01101"]) # 00101
puts BitwiseTwo(["100", "000"]) # 000
puts BitwiseTwo(["10100", "11100"]) # 10100
puts

puts " ===== 48 Powerset Count ====="
#Using the Ruby language, have the function PowerSetCount(arr) take the array of
#integers stored in arr, and return the length of the power set (the number of 
#all possible sets) that can be generated. For example: if arr is [1, 2, 3], 
#then the following sets form the power set: 
#[] 
#[1]
#[2]
#[3]
#[1, 2]
#[1, 3]
#[2, 3]
#[1, 2, 3] 
#You can see above all possible sets, along with the empty set, are generated. 
#Therefore, for this input, your program should return 8.
def PowerSetCount(arr)
  count, combos = 0, arr.length
  count += arr.combination(combos).to_a.length and combos -= 1 until combos < 0
  count
end
puts PowerSetCount([1, 2, 3]) # 8
puts PowerSetCount([1, 2, 3, 4]) # 16
puts PowerSetCount([5, 6]) # 4
puts

puts " ===== 49 Product Digits ====="
#Using the Ruby language, have the function ProductDigits(num) take the num 
#parameter being passed which will be a positive integer, and determine the least
#amount of digits you need to multiply to produce it. For example: if num is 24 
#then you can multiply 8 by 3 which produces 24, so your program should return 2 
#because there is a total of only 2 digits that are needed. Another example: if 
#num is 90, you can multiply 10 * 9, so in this case your program should output 3
#because you cannot reach 90 without using a total of 3 digits in your multiplication. 
#Hint
#Try iterating through all possible combinations of numbers to determine the least
#amount of digits needed to reach the desired answer. Example: to reach 24, 
#multiply 1 * 24, 2 * 12, 3 * 8, etc.
def ProductDigits(num)
  shortest = nil
  1.upto(num) do |first|
    1.upto(num) do |second|
      current, length = (first * second), (first.to_s + second.to_s).length
      shortest = length if (current == num) && (shortest == nil || length < shortest)
    end
  end
  shortest
end
puts ProductDigits(24) # 2
puts ProductDigits(6) # 3
puts ProductDigits(23) # 3
puts

puts " ===== 50 Palindrome Creator ====="
#Using the Ruby language, have the function PalindromeCreator(str) take the str 
#parameter being passed and determine if it is possible to create a palindromic 
#string of at least 3 characters by removing 1 or 2 characters. For example: if 
#str is "abjchba" then you can remove the characters jc to produce "abhba" which
#is a palindrome. For this example your program should return the two characters 
#that were removed with no delimiter and in the order they appear in the string, 
#so jc. If 1 or 2 characters cannot be removed to produce a palindrome, then 
#return the string not possible. If the input string is already a palindrome, 
#your program should return the string palindrome. 

#The input will only contain lowercase alphabetic characters. Your program should
#always attempt to create the longest palindromic substring by removing 1 or 2 
#characters (see second sample test case as an example). The 2 characters you 
#remove do not have to be adjacent in the string.
=begin
def palindrome?(word)
  word == word.reverse
end
#===========================================
def PalindromeCreator(str)
  return "palindrome" if palindrome?(str)
  result = nil
  
  str.chars.each_index do |i|
    break if str.length <= 3
    first = str.chars.clone
    single = first.slice!(i)
    result = single if palindrome?(first) && (result == nil || single.length < result.length)
    
    first.each_index do |i2|
      break if first.length <= 3 
      second = first.clone 
      double = single + second.slice!(i2)
      result = double if palindrome?(second) && (result == nil || double.length < result.length)
    end
  end
  
  result.nil? ? "not possible" : result
end
=end
def PalindromeCreator(str)
  return "palindrome" if str == str.reverse
  result = ""
  
  (0..str.length-1).each do |idx1|
    sub_str = str[0...idx1] + str[idx1+1..-1]
    return str[idx1] if sub_str == sub_str.reverse && sub_str.length > 2
    (idx1..str.length-1).each do |idx2|
      sub_str = str[0...idx1] + str[idx1+1...idx2] + str[idx2+1..-1]
      if sub_str == sub_str.reverse && sub_str.length > 2
        result = str[idx1] + str[idx2] if result.empty?
      end
    end
  end
  
  result.empty? ? "not possible" : result
end
puts PalindromeCreator("abjchba") # jc
puts PalindromeCreator("mmop") # not possible
puts PalindromeCreator("kjjjhjjj") # k
puts

puts " ===== 51 Basic Roman Numerals ====="
#Using the Ruby language, have the function BasicRomanNumerals(str) read str 
#which will be a string of Roman numerals. The numerals being used are: I for 1,
#V for 5, X for 10, L for 50, C for 100, D for 500 and M for 1000. In Roman 
#numerals, to create a number like 11 you simply add a 1 after the 10, so you 
#get XI. But to create a number like 19, you use the subtraction notation which
#is to add an I before an X or V (or add an X before an L or C). So 19 in Roman
#numerals is XIX. 

#The goal of your program is to return the decimal equivalent of the Roman numeral
#given. For example: if str is "XXIV" your program should return 24 
#def BasicRomanNumerals(str)
  #numerals = {"I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000}
  #result = 0
  #1.upto(str.length - 1) do |i|
    #current, previous = str[i], str[i- 1]
    #numerals[previous] < numerals[current] ? result -= numerals[previous] : result += numerals[previous]
    #result += numerals[current] if i == str.length - 1
  #end
  #result
#end

def BasicRomanNumerals(str)
  result = []
  roman_nums = Hash['I',1,'V',5,'X',10,'L',50,'C',100,'D',500,'M',1000]
  subs = Hash['CM','DCCCC','CD','CCCC','XC','LXXXX','XL','XXXX','IX','VIIII','IV','IIII']
  str.gsub!(/(CM)?(CD)?(XC)?(XL)?(IX)?(IV)?/, subs)
  roman_nums.each { |num, value| result << str.count(num)*value }
  result.reduce(:+)
end
puts BasicRomanNumerals("XXIV") # 24
puts BasicRomanNumerals("IV") # 4
puts BasicRomanNumerals("XLVI") # 46
puts

puts " ===== 52 Food Distribution ====="
#Using the Ruby language, have the function FoodDistribution(arr) read the array
#of numbers stored in arr which will represent the hunger level of different 
#people ranging from 0 to 5 (0 meaning not hungry at all, 5 meaning very hungry). 
#You will also have N sandwiches to give out which will range from 1 to 20. The 
#format of the array will be [N, h1, h2, h3, ...] where N represents the number 
#of sandwiches you have and the rest of the array will represent the hunger 
#levels of different people. Your goal is to minimize the hunger difference 
#between each pair of people in the array using the sandwiches you have available. 

#For example: if arr is [5, 3, 1, 2, 1], this means you have 5 sandwiches to 
#give out. You can distribute them in the following order to the people: 2, 0, 1, 0. 
#Giving these sandwiches to the people their hunger levels now become: [1, 1, 1, 1]. 
#The difference between each pair of people is now 0, the total is also 0, so your 
#program should return 0. Note: You may not have to give out all, or even any,
#of your sandwiches to produce a minimized difference. 

#Another example: if arr is [4, 5, 2, 3, 1, 0] then you can distribute the 
#sandwiches in the following order: [3, 0, 1, 0, 0] which makes all the hunger 
#levels the following: [2, 2, 2, 1, 0]. The differences between each pair of 
#people is now: 0, 0, 1, 1 and so your program should return the final minimized 
#difference of 2. 
def hunger(arr)
  best = []
  x =arr.length
  x.times do |i|
    total = 0
    arr[i] -=1
    (x-1).times do |ii|
      y = arr[ii] - arr[ii+1]
      total += y.abs
    end
    arr[i] +=1
    best << total
    #puts "b:#{best}"
   end
  low = best.min
  return best.index(low)
end
# ===========================
def FoodDistribution(arr)
  sand = arr.shift
  answers = []
  while sand > 0
    move = hunger(arr)
    arr[move] = arr[move] - 1
    sand -= 1
    min_dif = 0
    m = (arr.length) - 1
    m.times do |i|
      a = arr[i] - arr[i+1]
      min_dif += a.abs
    end
    answers << min_dif 
    #puts "#{move}:#{answers}"
  end

  return answers.min
end
puts FoodDistribution([5, 3, 1, 2, 1]) # 0
puts FoodDistribution([5, 2, 3, 4, 5]) # 1
puts FoodDistribution([3, 2, 1, 0, 4, 1, 0]) # 4
puts

puts " ===== 53 Three Sum ====="
#Using the Ruby language, have the function ThreeSum(arr) take the array of 
#integers stored in arr, and determine if any three distinct numbers (excluding 
#the first element) in the array can sum up to the first element in the array. 
#For example: if arr is [8, 2, 1, 4, 10, 5, -1, -1] then there are actually three
#sets of triplets that sum to the number 8: [2, 1, 5], [4, 5, -1] and [10, -1, -1]. 
#Your program should return the string true if 3 distinct elements sum to the 
#first element, otherwise your program should return the string false. The input
#array will always contain at least 4 elements. 
def ThreeSum(arr)
  number = arr.shift
  arr.combination(3).to_a.each{|triplets| return true if number == triplets.reduce(0, :+)}
  false
end
puts ThreeSum([8, 2, 1, 4, 10, 5, -1, -1]) # true
puts ThreeSum([10, 2, 3, 1, 5, 3, 1, 4, -4, -3, -2]) # true
puts ThreeSum([12, 3, 1, -5, -4, 7]) # false
puts

puts " ===== 54 Correct Path ====="
#Using the Ruby language, have the function CorrectPath(str) read the str parameter
#being passed, which will represent the movements made in a 5x5 grid of cells 
#starting from the top left position. The characters in the input string will 
#be entirely composed of: r, l, u, d, ?. Each of the characters stand for the 
#direction to take within the grid, for example: r = right, l = left, u = up, 
#d = down. Your goal is to determine what characters the question marks should 
#be in order for a path to be created to go from the top left of the grid all 
#the way to the bottom right without touching previously travelled on cells in 
#the grid. 

#For example: if str is "r?d?drdd" then your program should output the final 
#correct string that will allow a path to be formed from the top left of a 5x5 
#grid to the bottom right. For this input, your program should therefore return
#the string rrdrdrdd. There will only ever be one correct path and there will 
#always be at least one question mark within the input string. 
def path_ok?(str)
	history = []
	forward = [0,0]
	for idx in 0...str.length
		if str[idx] == "r"
			forward[0] += 1 
		elsif str[idx] == "l"
			forward[0] -= 1
		elsif str[idx] == "d"
			forward[1] += 1
		elsif str[idx] == "u"
			forward[1] -= 1
		end
		history << forward.dup 
	end
	
	if history.length == history.uniq.length && history.last == [4,4]
		return true 
	else return false 
	end 

end 
# ============================================
def CorrectPath(str)
  options = ["l","r","u","d"]
	teststr = str 
	
	loop do 
		teststr = str.dup 
		teststr.chars.each_with_index do |char, idx|
			if char == "?"
				random = options[rand(options.length)]
				teststr[idx] = random
			end
		end
	
		if path_ok?(teststr)
			return teststr
		end 
	end 
end
puts CorrectPath("r?d?drdd") # rrdrdrdd
puts CorrectPath("???rrurdr?") # "dddrrurdrd"
puts CorrectPath("drdr??rrddd?") # "drdruurrdddd"

puts " ===== 55 Scale Balancing ====="
#Using the Ruby language, have the function ScaleBalancing(strArr) read strArr 
#which will contain two elements, the first being the two positive integer 
#weights on a balance scale (left and right sides) and the second element being
#a list of available weights as positive integers. Your goal is to determine if
#you can balance the scale by using the least amount of weights from the list, 
#but using at most only 2 weights. For example: if strArr is ["[5, 9]", "[1, 2, 6, 7]"] 
#then this means there is a balance scale with a weight of 5 on the left side 
#and 9 on the right side. It is in fact possible to balance this scale by adding
#a 6 to the left side from the list of weights and adding a 2 to the right side. 
#Both scales will now equal 11 and they are perfectly balanced. Your program should 
#return a common separated string of the weights that were used from the list in 
#ascending order, so for this example your program should return the string 2,6 

#There will only ever be one unique solution and the list of available weights
#will not be empty. It is also possible to add two weights to only one side of 
#the scale to balance it. If it is not possible to balance the scale then your 
#program should return the string not possible. 
def ScaleBalancing(strArr)
	scale = strArr[0]
	arr = strArr[1]
	scale.gsub!("[", "").gsub!("]", "")
	arr.gsub!("[", "").gsub!("]", "")
	scale = scale.split(",").map {|n| n.to_i}
    arr = arr.split(",").map {|n| n.to_i}
    diff = (scale[0] - scale[1]).abs
    arr.each do |num|
    	return num.to_s if num == diff
    end 
    (0..arr.length-2).each do |i|
    	(i+1..arr.length-1).each do |j|
    		return (arr[i].to_s) + "," + (arr[j].to_s) if arr[i] + arr[j] == diff || (arr[i] - arr[j]).abs == diff  
    	end 	
    end
    return "not possible"
end
puts ScaleBalancing(["[5, 9]", "[1, 2, 6, 7]"]) # 2,6
puts ScaleBalancing(["[3, 4]", "[1, 2, 7, 7]"]) # 1
puts ScaleBalancing(["[13, 4]", "[1, 2, 3, 6, 14]"]) # 3,6
puts

puts " ===== 56 Three Numbers ====="
#Using the Ruby language, have the function ThreeNumbers(str) take the str parameter
#being passed and determine if exactly three unique, single-digit integers occur 
#within each word in the string. The integers can appear anywhere in the word, but 
#they cannot be all adjacent to each other. If every word contains exactly 3 unique 
#integers somewhere within it, then return the string true, otherwise return the 
#string false. For example: if str is "2hell6o3 wor6l7d2" then your program should
#return "true" but if the string is "hell268o w6or2l4d" then your program should 
#return "false" because all the integers are adjacent to each other in the first 
#word.
#def ThreeNumbers(str)
  #check = str.split(" ").map! { |x| x.scan(/\d+/).map! { |y| y.to_i }}
  #check.keep_if { |z| z.length > 1 }
  #check.map! { |a| a.join("").split("").uniq.map! { |b| b.to_i } }
  #check.keep_if { |c| c.length > 2 }
  #if check.length == str.split(" ").length
    #return true
  #else return false
  #end
#end

#def ThreeNumbers(str)
    #strAry = str.split(" ")
    #for i in (0..strAry.length-1)
      #tmp = strAry[i].scan(/\d/)
      #return false if tmp.length <= 2 || tmp.uniq.length != 3
    #end
    #return true 
#end

=begin
def conditions(word)
    idxs = []
    word.each_char.with_index do |char, idx| 
        idxs << idx if is_num?(char) 
    end
    idxs.size == 3 && not_adjacent?(idxs) && uniq?(word, idxs)
end
#=========
def not_adjacent?(idxs)
    return false if (idxs[1] == idxs[0] + 1) && (idxs[1] == idxs[2] - 1)
    true
end
#========
def uniq?(word, idxs)
   nums = []
   idxs.each { |idx| nums << word[idx] }
   nums == nums.uniq
end
#========
def is_num?(char)
   true if Float(char) rescue false 
end

#==========================================================
def ThreeNumbers(str)
    words = str.split(" ")
    words.each { |word| return false unless conditions(word) }
    true
end
=end

def ThreeNumbers(str)
	words = str.split(" ")
	words.all? do |word| 
		word.scan(/\d/).length == word.scan(/\d/).uniq.length &&
		word.scan(/\d+/).none? {|nums| nums.length >= 3 }
	end 
end
puts ThreeNumbers("2hell6o3 wor6l7d2") # true
puts ThreeNumbers("2a3b5 w1o2rl3d g1gg92") # true
puts ThreeNumbers("21aa3a ggg4g4g6ggg") # false
puts

puts " ===== 57 Alphabet Searching ====="
#Using the Ruby language, have the function AlphabetSearching(str) take the str 
#parameter being passed and return the string true if every single letter of the
#English alphabet exists in the string, otherwise return the string false. 
#For example: if str is "zacxyjbbkfgtbhdaielqrm45pnsowtuv" then your program should 
#return the string true because every character in the alphabet exists in this 
#string even though some characters appear more than once.
def AlphabetSearching(str)
    alphabet = ('a'..'z').to_a
    alphabet.all? { |lttr| str.include?(lttr) }
end
puts AlphabetSearching("zacxyjbbkfgtbhdaielqrm45pnsowtuv") # true
puts AlphabetSearching("abcdefghijklmnopqrstuvwxyyyy") # false
puts AlphabetSearching("abc123456kmo") # false
puts

puts " ===== 58 Time Difference ====="
#Using the Ruby language, have the function TimeDifference(strArr) read the array
#of strings stored in strArr which will be an unsorted list of times in a twelve-hour
#format like so: HH:MM(am/pm). Your goal is to determine the smallest difference 
#in minutes between two of the times in the list. For example: if strArr is 
#["2:10pm", "1:30pm", "10:30am", "4:42pm"] then your program should return 40 because
#the smallest difference is between 1:30pm and 2:10pm with a difference of 40 
#minutes. The input array will always contain at least two elements and all of 
#the elements will be in the correct format and unique. 
def find_diff(time1, time2)
  opposite = time1 > time2 ? 24 * 60 - time1 + time2 : 24 * 60 - time2 + time1
  [(time1 - time2).abs, opposite].min
end
#================
def convert_to_minutes(strArr)
  strArr.map do |time|
    flag = time[-2..-1]
    just_time = time[0..-3].split(":").map(&:to_i)
    just_time[0] += 12 if flag == 'pm' && just_time[0] != 12
    just_time[0] -= 12 if flag == 'am' && just_time[0] == 12
    
    just_time[0] * 60 + just_time[1]
  end
end
#==================
def TimeDifference(strArr)
  arr = convert_to_minutes(strArr)
  min_difference = nil
  0.upto(arr.length - 2) do |idx1|
    (idx1 + 1).upto(arr.length - 1) do |idx2|
      difference = find_diff(arr[idx1], arr[idx2])
      min_difference = difference if (min_difference.nil? || difference < min_difference)
    end
  end

  min_difference
end
puts TimeDifference(["2:10pm", "1:30pm", "10:30am", "4:42pm"]) # 40
puts TimeDifference(["1:10pm", "4:40am", "5:00pm"]) # 230
puts TimeDifference(["10:00am", "11:45pm", "5:00am", "12:01am"]) # 16
puts

puts " ===== 59 Triangle Row ====="
#Using the Ruby language, have the function TriangleRow(num) take num which will
#be a positive integer representing some row from Pascal's triangle. Pascal's 
#triangle starts with a [1] at the 0th row of the triangle. Then the first row 
#is [1, 1] and the second row is [1, 2, 1]. The next row begins with 1 and ends
#with 1, and the inside of the row is determined by adding the k-1 and kth elements
#from the previous row. The next row in the triangle would then be [1, 3, 3, 1],
#and so on. The input will be some positive integer and your goal is to return 
#the sum of that row. For example: if num is 4 then your program should return 
#the sum of 1 + 4 + 6 + 4 + 1 which is 16. 
def TriangleRow(num)
  2**num  
end
puts TriangleRow(4) # 16
puts TriangleRow(1) # 2
puts TriangleRow(2) # 4
puts

puts " ===== 60 Vowel Square ====="
#Using the Ruby language, have the function VowelSquare(strArr) take the strArr 
#parameter being passed which will be a 2D matrix of some arbitrary size filled
#with letters from the alphabet, and determine if a 2x2 square composed entirely
#of vowels exists in the matrix. For example: strArr is ["abcd", "eikr", "oufj"]
#then this matrix looks like the following: 
# a b c d
# e i k r
# o u f j 
#Within this matrix there is a 2x2 square of vowels starting in the second row 
#and first column, namely, ei, ou. If a 2x2 square of vowels is found your program
#should return the top-left position (row-column) of the square, so for this 
#example your program should return 1-0. If no 2x2 square of vowels exists, then 
#return the string not found. If there are multiple squares of vowels, return the 
#one that is at the most top-left position in the whole matrix. The input matrix 
#will at least be of size 2x2. 
def VowelSquare(strArr)
  vowels = ['a', 'e', 'u', 'i', 'o']
  0.upto(strArr.length - 2) do |row|
    0.upto(strArr[row].length - 2) do |col|
      small_square = [
        strArr[row][col],
        strArr[row][col + 1],
        strArr[row + 1][col],
        strArr[row + 1][col + 1]
      ]
      return "#{row}-#{col}" if small_square.all? do |char| 
        vowels.include?(char) 
      end
    end
  end
  
  'not found'
end
puts VowelSquare(["abcd", "eikr", "oufj"]) # 1-0
puts VowelSquare(["aqrst", "ukaei", "ffooo"]) # 1-2
puts VowelSquare(["gg", "ff"]) # not found
puts

puts " ===== 61 Closest Enemy I ====="
#Using the Ruby language, have the function ClosestEnemy(arr) take the array of 
#numbers stored in arr and from the position in the array where a 1 is, return 
#the number of spaces either left or right you must move to reach an enemy which
#is represented by a 2. For example: if arr is [0, 0, 1, 0, 0, 2, 0, 2] then your
#program should return 3 because the closest enemy (2) is 3 spaces away from 
#the 1. The array will contain any number of 0's and 2's, but only a single 1. 
#It may not contain any 2's at all as well, where in that case your program 
#should return a 0. 
def ClosestEnemy(arr)
  one_index = arr.index(1)
  left, right = one_index, one_index
  
  while left != 0 || arr[right] != nil
    return one_index - left if arr[left] == 2
    return right - one_index if arr[right] == 2
    left -= 1 if left != 0
    right += 1
  end
  return 0
end
puts ClosestEnemy([0, 0, 1, 0, 0, 2, 0, 2]) # 3
puts ClosestEnemy([1, 0, 0, 0, 2, 2, 2]) # 4
puts ClosestEnemy([2, 0, 0, 0, 2, 2, 1, 0]) # 1
puts

puts " ===== 62 Closest Enemy II ====="
#Using the Ruby language, have the function ClosestEnemyII(strArr) read the 
#matrix of numbers stored in strArr which will be a 2D matrix that contains only
#the integers 1, 0, or 2. Then from the position in the matrix where a 1 is, 
#return the number of spaces either left, right, down, or up you must move to 
#reach an enemy which is represented by a 2. You are able to wrap around one side
#of the matrix to the other as well. For example: if strArr is 
#["0000", "1000", "0002", "0002"] then this looks like the following: 

#0 0 0 0
#1 0 0 0
#0 0 0 2
#0 0 0 2 

#For this input your program should return 2 because the closest enemy (2) is 2 
#spaces away from the 1 by moving left to wrap to the other side and then moving
#down once. The array will contain any number of 0's and 2's, but only a single 1.
#It may not contain any 2's at all as well, where in that case your program 
#should return a 0. 
puts ClosestEnemyII(["0000", "1000", "0002", "0002"]) # 2
puts ClosestEnemyII(["000", "100", "200"]) # 1
puts ClosestEnemyII(["0000", "2010", "0000", "2002"]) # 2
puts



puts " ======================================== "
puts "                MEDIUM_SETS                 "
puts " ======================================== "
puts
puts " ===== 01 Prime Time ====="
#Using the Ruby language, have the function PrimeTime(num) take the num parameter
#being passed and return the string true if the parameter is a prime number, 
#otherwise return the string false. The range will be between 1 and 2^16. 
# 01
def PrimeTime(num)
  (2..(num-1)).to_a.each{|i| return false if num % i == 0}
  return true 
end
puts PrimeTime(19)
puts PrimeTime(110)
puts PrimeTime(101)
puts

puts " ===== 02 Run Length ====="
#Using the Ruby language, have the function RunLength(str) take the str parameter
#being passed and return a compressed version of the string using the Run-length
#encoding algorithm. This algorithm works by taking the occurrence of each repeating
#character and outputting that number along with a single character of the repeating
#sequence. For example: "wwwggopp" would return 3w2g1o2p. The string will not 
#contain any numbers, punctuation, or symbols. 
# 01
#def RunLength(str)
  #str.scan(/((\w)\2*)/).map!{|arr| (arr[0].length.to_s + arr[1]) }.join('')
#end

def RunLength(str)
  result = ""
  ctr = 1
  0.upto(str.length-1) do |idx|
    if str[idx] == str[idx+1]
      ctr += 1
    else
      result += ctr.to_s + str[idx]
      ctr = 1
    end
  end
  
  result
end
puts RunLength("wwwggopp") # 3w2g1o2p
puts RunLength("aabbcde") # "2a2b1c1d1e"
puts RunLength("wwwbbbw") #"3w3b1w"
puts

puts " ===== 03 Prime Mover ====="
#Using the Ruby language, have the function PrimeMover(num) return the numth 
#prime number. The range will be from 1 to 10^4. For example: if num is 16 the
#output should be 53 as 53 is the 16th prime number.
# 01
def is_prime?(num)
  (2..(num- 1)).to_a.each{|n| return false if num % n == 0 }
  true
end
#==============================
def PrimeMover(num)
  nth, current = 1, 2
  until nth == num
    current += 1
    nth += 1 if is_prime?(current)
  end
  current
end
puts PrimeMover(16) # 53
puts PrimeMover(9) # 23
puts PrimeMover(100) # 541
puts

puts " ===== 04 Palindrome Two ====="
#Using the Ruby language, have the function PalindromeTwo(str) take the str 
#parameter being passed and return the string true if the parameter is a 
#palindrome, (the string is the same forward as it is backward) otherwise return
#the string false. The parameter entered may have punctuation and symbols but 
#they should not affect whether the string is in fact a palindrome. For example:
#"Anne, I vote more cars race Rome-to-Vienna" should return true. 
# 01
def PalindromeTwo(str)
  letters = str.downcase.scan(/[a-z]/).join
  letters == letters.reverse
end
puts PalindromeTwo("Anne, I vote more cars race Rome-to-Vienna") # true
puts PalindromeTwo("Noel - sees Leon") # true
puts PalindromeTwo("A war at Tarawa!") # true
puts

puts " ===== 05 Division ====="
#Using the Ruby language, have the function Division(num1,num2) take both 
#parameters being passed and return the Greatest Common Factor. That is, return
#the greatest number that evenly goes into both numbers with no remainder. For
#example: 12 and 16 both are divisible by 1, 2, and 4 so the output should be 4.
#The range for both parameters will be from 1 to 10^3.
# 01
def Division(num1,num2)
  factor = [num1, num2].min
  factor -= 1 until num1 % factor == 0 && num2 % factor == 0
  factor
end
puts Division(12, 16) # 4
puts Division(7, 3) # 1
puts Division(36, 54) # 18
puts

puts " ===== 06 String Scramble ====="
#Using the Ruby language, have the function StringScramble(str1,str2) take both
#parameters being passed and return the string true if a portion of str1 
#characters can be rearranged to match str2, otherwise return the string false. 
#For example: if str1 is "rkqodlw" and str2 is "world" the output should return 
#true. Punctuation and symbols will not be entered with the parameters.
# 01
def StringScramble(str1,str2)
  str2.chars{|c| return false if str1.count(c) < str2.count(c) }
  true
end
puts StringScramble("rkqodlw", "world") # true
puts StringScramble("cdore", "coder") # true
puts StringScramble("h3llko", "hello") # false
puts

puts " ===== 07 Arith Geo II ====="
#Using the Ruby language, have the function ArithGeoII(arr) take the array of 
#numbers stored in arr and return the string "Arithmetic" if the sequence 
#follows an arithmetic pattern or return "Geometric" if it follows a geometric
#pattern. If the sequence doesn't follow either pattern return -1. An arithmetic
#sequence is one where the difference between each of the numbers is consistent,
#where as in a geometric sequence, each term after the first is multiplied by 
#some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric
#example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will
#not be entered, and no array will contain all the same elements. 
# 01
def ArithGeoII(arr)
  arithmetic, geometric, a_pattern, g_pattern = true, true, arr[1] - arr[0], arr[1].to_f / arr[0]
  
  arr.each_with_index do |current, i|
    next if i == 0
    prev = arr[i- 1] 
    arithmetic = false if arithmetic == true && (current - prev != a_pattern)
    geometric = false if geometric == true && (current.to_f / prev != g_pattern)
  end
  
  return "Arithmetic" if arithmetic
  return "Geometric" if geometric
  -1
end
puts ArithGeoII([5,10,15]) # Arithmetic
puts ArithGeoII([2,4,16,24]) # -1
puts ArithGeoII([2,4,8,16,32]) # Geometric
puts

puts " ===== 08 Array Addition ====="
#Using the Ruby language, have the function ArrayAddition(arr) take the array of
#numbers stored in arr and return the string true if any combination of numbers
#in the array can be added up to equal the largest number in the array, otherwise
#return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the 
#output should return true because 4 + 6 + 10 + 3 = 23. The array will not be 
#empty, will not contain all the same elements, and may contain negative numbers. 
# 01
def ArrayAddition(arr)
  largest = arr.sort!.pop
  numbers = arr
  combos = []
  
  idx = numbers.length
  while idx > 0
    combos << numbers.combination(idx).to_a.map!{|c| c.inject(:+)}
    idx -= 1
  end
  
  return true if combos.flatten.include?(largest)
  false
end
puts ArrayAddition([4, 6, 23, 10, 1, 3]) # true
puts ArrayAddition([5,7,16,1,2]) # false
puts ArrayAddition([3,5,-1,8,12]) # true
puts

puts " ===== 09 Binary Coverter ====="
#Using the Ruby language, have the function BinaryConverter(str) return the 
#decimal form of the binary value. For example: if 101 is passed return 5, or 
#if 1000 is passed return 8.
# 01
def BinaryConverter(str)
  return str.to_i(2)
end
puts BinaryConverter("101") # 5
puts BinaryConverter("1000") # 8
puts BinaryConverter("100101") # 37
puts BinaryConverter("011") # 3
puts

puts " ===== 10 Letter Count ====="
#Using the Ruby language, have the function LetterCount(str) take the str 
#parameter being passed and return the first word with the greatest number of 
#repeated letters. For example: "Today, is the greatest day ever!" should return
#greatest because it has 2 e's (and 2 t's) and it comes before ever which also 
#has 2 e's. If there are no words with repeating letters return -1. Words will 
#be separated by spaces.
def LetterCount(str)
  greatest = -1
  count = 0
  words = str.scan(/\w+/)
  
  idx = 0
  while idx < words.length
    current_count = 0
    words[idx].chars.sort.join('').scan(/((\w)\2+)/).each{|letter| current_count += letter[0].length}
    
    if current_count > count
        greatest = words[idx]
        count = current_count
    end
    idx += 1
  end
    
  greatest
end
puts LetterCount("Today, is the greatest day ever!") # greatest
puts LetterCount("Hello apple pie") # Hello
puts LetterCount("No words") # -1
puts
puts " ===== 11 Simple Mode ====="
#Using the Ruby language, have the function SimpleMode(arr) take the array of 
#numbers stored in arr and return the number that appears most frequently 
#(the mode). For example: if arr contains [10, 4, 5, 2, 4] the output should be 4.
#If there is more than one mode return the one that appeared in the array first 
#(ie. [5, 10, 10, 6, 5] should return 5 because it appeared first). If there is 
#no mode return -1. The array will not be empty. 
# 01
def SimpleMode(arr)
    return -1 if arr.length == arr.uniq.length
    counts = Hash.new(0)
    arr.each{|num| counts[num] += 1}
    counts.key(counts.values.max)
end
puts SimpleMode([10, 4, 5, 2, 4]) # 4
puts SimpleMode([5,5,2,2,1]) # 5
puts SimpleMode([3,4,1,6,10]) # -1
puts

puts " ===== 12 Caesar Cipher ====="
#Using the Ruby language, have the function CaesarCipher(str,num) take the str 
#parameter and perform a Caesar Cipher shift on it using the num parameter as 
#the shifting number. A Caesar Cipher works by shifting each letter in the string
#N places down in the alphabet (in this case N will be num). Punctuation, spaces,
#and capitalization should remain intact. For example if the string is "Caesar 
#Cipher" and num is 2 the output should be "Ecguct Ekrjgt".
# 01
def CaesarCipher(str,num)
  alph = ('a'..'z').to_a
  caps = ('A'..'Z').to_a
  result = ""
  
  str.chars.each do |char|
    result << alph[(alph.index(char) - (26 - num))] if alph.include?(char)
    result << caps[(caps.index(char) - (26 - num))] if caps.include?(char)
    result << char if !alph.include?(char) && !caps.include?(char)
  end
  result
end
puts CaesarCipher("Caesar Cipher", 2) # Ecguct Ekrjgt
puts CaesarCipher("Hello", 4) # Lips
puts CaesarCipher("abc", 0) # abc
puts

puts " ===== 13 Formatted Division ====="
#Using the Ruby language, have the function FormattedDivision(num1,num2) take 
#both parameters being passed, divide num1 by num2, and return the result as a 
#string with properly formatted commas and 4 significant digits after the decimal
#place. For example: if num1 is 123456789 and num2 is 10000 the output should be
#"12,345.6789". The output must contain a number in the one's place even if it is
#a zero. 
# 01
=begin
def FormattedDivision(num1,num2)
    quotient = num1.fdiv(num2)
    four_dig = sprintf "%.4f", quotient
    four_dig_split = four_dig.split(".")
    to_commafy = four_dig_split.first
    post_decimal = four_dig_split.last
    return AddCommas(to_commafy) + "." + post_decimal
end

def AddCommas(str)
    str_to_add_to = str.reverse
    commafied = ""
    while str_to_add_to.length > 3
        commafied << str_to_add_to.slice!(0,3)
        commafied << ","
    end
    commafied << str_to_add_to
    return commafied.reverse
end
=end

def FormattedDivision(num1,num2)
  divided = (num1.to_f / num2.to_f).round(4).to_s.split('.')
  first = divided[0].reverse.scan(/.{1,3}/).join(',').reverse
  second = divided[1]
  second << "0" until second.length == 4 
  
  first + "." + second
end
puts FormattedDivision(123456789, 10000) # 12,345.6789
puts FormattedDivision(2, 3) # 0.6667
puts FormattedDivision(10, 10) # 1.0000
puts

puts " ===== 14 Consecutive ====="
# Using the Ruby language, have the function Consecutive(arr) take the array of 
#integers stored in arr and return the minimum number of integers needed to make
#the contents of arr consecutive from the lowest number to the highest number. 
#For example: If arr contains [4, 8, 6] then the output should be 2 because two 
#numbers need to be added to the array (5 and 7) to make it a consecutive array 
#of numbers from 4 to 8. Negative numbers may be entered as parameters and no 
#array will have less than 2 elements. 
# 01
def Consecutive(arr)
    (arr.min..arr.max).to_a.length - arr.length
end
puts Consecutive([4, 8, 6]) # 2
puts Consecutive([5,10,15]) # 8
puts Consecutive([-2,10,4]) # 10
puts

puts " ===== 15 Counting Minutes ===== "
# Using the Ruby language, have the function CountingMinutes(str) take the str 
#parameter being passed which will be two times (each properly formatted with a 
#colon and am or pm) separated by a hyphen and return the total number of minutes
#between the two times. The time will be in a 12 hour clock format. For example:
#if str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am 
#the output should be 1320. 
# 01
def CountingMinutes(str)
  time = str.scan(/\w{1,2}/)
  beg_hour, beg_min, beg_meridiem = time[0].to_i, time[1].to_i, time[2]
  end_hour, end_min, end_meridiem = time[3].to_i, time[4].to_i, time[5]
  total_beg, total_end = (beg_hour * 60 + beg_min), (end_hour * 60 + end_min)
  
  total = total_end - total_beg
  total += 720 if end_meridiem != beg_meridiem && total_beg > total_end
  total += 720 if end_meridiem != beg_meridiem && total_end > total_beg
  total += 1440 if end_meridiem == beg_meridiem && total_beg > total_end
  
  total
end
puts CountingMinutes("9:00am-10:00am") # 60
puts CountingMinutes("12:30pm-12:00am") # 690
puts CountingMinutes("1:23am-1:08am") # 1425
puts

puts " ===== 16 Permutation Step ===== "
# Using the Ruby language, have the function PermutationStep(num) take the num 
#parameter being passed and return the next number greater than num using the 
#same digits. For example: if num is 123 return 132, if it's 12453 return 12534.
#If a number has no greater permutations, return -1 (ie. 999).
# 01
=begin
def PermutationStep(num)
  permutations = num.to_s.chars.permutation.to_a.map!{|per| per.join('').to_i}.sort.uniq
  idx = num.to_s.length
  while idx > 0
    num.to_s.chars.permutation(idx).to_a.each{|per| permutations << per.join('').to_i}
    permutations.sort!.uniq!
    idx -= 1
  end
  num == permutations.last ? -1 : permutations.fetch(permutations.index(num) + 1)
end
=end
def PermutationStep(num) 
	permutations = []
	num.to_s.split("").permutation.each do |permutation| 
		permutations << permutation.join.to_i 
	end
	permutations.sort!.each do |permutation|
		return permutation if permutation > num 
	end 	
	return -1 
end
puts PermutationStep(123) # 132
puts PermutationStep(12453) # 12534
puts PermutationStep(11121) # 11211
puts PermutationStep(41352) # 41523
puts

puts " ===== 17 Prime Checker ===== "
#Using the Ruby language, have the function PrimeChecker(num) take num and return
#1 if any arrangement of num comes out to be a prime number, otherwise return 0.
#For example: if num is 910, the output should be 1 because 910 can be arranged 
#into 109 or 019, both of which are primes. 
# 01
require 'prime'
def PrimeChecker(num)
   num = num.to_s.split("").permutation.map{|x| return 1 if Prime.prime?(x.join("").to_i)}
   return 0
end
puts PrimeChecker(910) # 1
puts PrimeChecker(24) # 0
puts PrimeChecker(598) # 1
puts PrimeChecker(98) # 1
puts

puts " ===== 18 Dash Insert II ===== "
#Using the Ruby language, have the function DashInsertII(str) insert dashes ('-')
#between each two odd numbers and insert asterisks ('*') between each two even 
#numbers in str. For example: if str is 4546793 the output should be 454*67-9-3.
#Don't count zero as an odd or even number. 
# 01
def DashInsertII(num)
    odd, even = [1,3,5,7,9], [2,4,6,8]
    answer, i, num  = "", 0, num.to_s
    0.upto((num.length)-2) do |i|
        a, b = num[i].to_i, num[i+1].to_i
        answer += a.to_s
        answer += "-" if odd.include?(a) && odd.include?(b)
        answer += "*" if even.include?(a) && even.include?(b)
    end
    answer += num[-1] #last number
    return answer
end
puts DashInsertII("4546793") # 454*67-9-3
puts DashInsertII("99946") # 9-9-94*6
puts DashInsertII("56647304") # 56*6*47-304
puts

puts " ===== 19 Swap II ===== "
#Using the Ruby language, have the function SwapII(str) take the str parameter 
#and swap the case of each character. Then, if a letter is between two numbers 
#(without separation), switch the places of the two numbers. For example: if str
#is "6Hello4 -8World, 7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3. 
# 01
#def SwapII(str)
  #str.swapcase.gsub(/\d[A-z]+\d/){|m| (m[0], m[1..-2], m[-1] = m[-1], m[1..-2], m[0]).join('')}
#end

#def SwapII(str)
  #str.swapcase.gsub(/(\d+)([a-zA-Z]+)(\d+)/,'\3\2\1')
#end

def SwapII(str)
	numeric = "0".upto("9").to_a 
	arr = str.swapcase!.split(" ")
	arr.each do |word|
		indices = []
		(0..word.length-1).each do |i| 
			indices << i if numeric.include?(word[i]) == true
		end
		if indices.count > 1 && indices[1] - indices[0] > 1 
			word[indices[0]],word[indices[1]] = word[indices[1]],word[indices[0]] 
		end 
	end 	
	arr.join(" ")
end
puts SwapII("6Hello4 -8World, 7 yes3") # 4hELLO6 -8wORLD, 7 YES3
puts SwapII("Hello -5LOL6") # "hELLO -6lol5"
puts SwapII("2S 6 du5d4e") # "2s 6 DU4D5E"
puts

puts " ===== 20 Number Search ===== "
#Using the Ruby language, have the function NumberSearch(str) take the str 
#parameter, search for all the numbers in the string, add them together, then 
#return that final number divided by the total amount of letters in the string.
#For example: if str is "Hello6 9World 2, Nic8e D7ay!" the output should be 2. 
#First if you add up all the numbers, 6 + 9 + 2 + 8 + 7 you get 32. Then there 
#are 17 letters in the string. 32 / 17 = 1.882, and the final answer should be 
#rounded to the nearest whole number, so the answer is 2. Only single digit 
#numbers separated by spaces will be used throughout the whole string (So this 
#won't ever be the case: hello44444 world). Each string will also have at least 
#one letter. 
# 01
def NumberSearch(str)
  ((str.scan(/\d+/).map(&:to_i).reduce(0, :+).to_f) / str.scan(/[[:alpha:]]/).length).round
end
puts NumberSearch("Hello6 9World 2, Nic8e D7ay!") # 2
puts NumberSearch("H3ello9-9") # 4
puts NumberSearch("One Number*1*") # 0
puts

puts " ===== 21 Tripple Double ====="
#Using the Ruby language, have the function TripleDouble(num1,num2) take both 
#parameters being passed, and return 1 if there is a straight triple of a number
#at any place in num1 and also a straight double of the same number in num2. For
#example: if num1 equals 451999277 and num2 equals 41177722899, then return 1 
#because in the first parameter you have the straight triple 999 and you have a 
#straight double, 99, of the same number in the second parameter. If this isn't 
#the case, return 0. 
# 01
def TripleDouble(num1,num2)
  num1 = num1.to_s.chars.each_cons(3).select { |set| set.uniq.size == 1 }
  num2 = num2.to_s.chars.each_cons(2).select { |set| set.uniq.size == 1 }
  return 0 if num1.empty? || num2.empty?
  #return 1 if num1.any? { |set| num2.any? { |set2| set2.include?(set.first) } }
  return 1 if num1.any? == num2.any?
  0
end
puts TripleDouble(451999277, 41177722899) # 1
puts TripleDouble(67844, 66237) # 0
puts TripleDouble(465555, 5579) # 1
puts

puts " ===== 22 Bracket Matcher ====="
#Using the Ruby language, have the function BracketMatcher(str) take the str 
#parameter being passed and return 1 if the brackets are correctly matched and 
#each one is accounted for. Otherwise return 0. For example: if str is "(hello
#(world))", then the output should be 1, but if str is "((hello (world))" 
#the the output should be 0 because the brackets do not correctly match up. 
#Only "(" and ")" will be used as brackets. If str contains no brackets return 1.
# 01
def BracketMatcher(str)
  b1, b2 = 0, 0
  str.chars do |c|
      b1 += 1 if c == "("
      b2 += 1 if c == ")"
  end
  b2 == b1 ? 1 : 0
  #return 0 if b1 != b2
  #return 1
end
puts BracketMatcher("((hello (world))") # 0
puts BracketMatcher("(c(oder)) b(yte)") # 1
puts BracketMatcher("(coder)(byte))") # 0
puts

puts " ===== 23 String Reduction ====="
#Using the Ruby language, have the function StringReduction(str) take the str 
#parameter being passed and return the smallest number you can get through the 
#following reduction method. The method is: Only the letters a, b, and c will 
#be given in str and you must take two different adjacent characters and replace
#it with the third. For example "ac" can be replaced with "b" but "aa" cannot be
#replaced with anything. This method is done repeatedly until the string cannot 
#be further reduced, and the length of the resulting string is to be outputted. 
#For example: if str is "cab", "ca" can be reduced to "b" and you get "bb" (you 
#can also reduce it to "cc"). The reduction is done so the output should be 2. 
#If str is "bcab", "bc" reduces to "a", so you have "aab", then "ab" reduces to 
#"c", and the final string "ac" is reduced to "b" so the output should be 1.
# 01
def StringReduction(str)
  str.chars.uniq.length == 1 ? str.length : StringReduction(str.sub(/ab|ba/, "c").sub(/ac|ca/, "b").sub(/bc|cb/, "a"))
end
puts StringReduction("bcab") # 1
puts StringReduction("abcabc") # 2
puts StringReduction("cccc") # 4
puts

puts " ===== 24 Coin Determiner ====="
#Using the Ruby language, have the function CoinDeterminer(num) take the input, 
#which will be an integer ranging from 1 to 250, and return an integer output 
#that will specify the least number of coins, that when added, equal the input 
#integer. Coins are based on a system as follows: there are coins representing 
#the integers 1, 5, 7, 9, and 11. So for example: if num is 16, then the output 
#should be 2 because you can achieve the number 16 with the coins 9 and 7. If 
#num is 25, then the output should be 3 because you can achieve 25 with either 
#11, 9, and 5 coins or with 9, 9, and 7 coins.
# 01
def CoinDeterminer(num)
  return num if num <= 4 && num >= 0
  count, coins = 0, [11, 9, 7, 5, 3, 1]
  coins.each do |coin|
    while num >= coin
      count += 1 and num -= coin
    end
  end
  count
end
puts CoinDeterminer(25) # 3
puts CoinDeterminer(6) # 2
puts CoinDeterminer(16) # 2
puts

puts " ===== 25 ThreeFive Multiples ====="
#Using the Ruby language, have the function ThreeFiveMultiples(num) return the 
#sum of all the multiples of 3 and 5 that are below num. For example: if num is 
#10, the multiples of 3 and 5 that are below 10 are 3, 5, 6, and 9, and adding 
#them up you get 23, so your program should return 23. The integer being passed 
#will be between 1 and 100. 
# 01
def ThreeFiveMultiples(num)
  num <= 3 ? 0 : (3..(num - 1)).to_a.keep_if{|n| n % 3 == 0 || n % 5 == 0}.inject(:+)
end
puts ThreeFiveMultiples(10) # 23
puts ThreeFiveMultiples(1) # 0
puts ThreeFiveMultiples(6) # 8
puts

puts " ===== 26 Fibonacci Checker ====="
#Using the Ruby language, have the function FibonacciChecker(num) return the 
#string yes if the number given is part of the Fibonacci sequence. This sequence
#is defined by: Fn = Fn-1 + Fn-2, which means to find Fn you add the previous 
#two numbers up. The first two numbers are 0 and 1, then comes 1, 2, 3, 5 etc. 
#If num is not in the Fibonacci sequence, return the string no. 
# 01
def FibonacciChecker(num)
  fnums = [0, 1]
  fnums << (fnums[-1] + fnums[-2]) until fnums.last >= num
  fnums.include?(num) ? "yes" : "no"
end
puts FibonacciChecker(34) # yes
puts FibonacciChecker(54) # no
puts FibonacciChecker(5) # yes
puts

puts " ===== 27 Multiple Brackets ====="
#Using the Ruby language, have the function MultipleBrackets(str) take the str 
#parameter being passed and return 1 #ofBrackets if the brackets are correctly 
#matched and each one is accounted for. Otherwise return 0. For example: if str 
#is "(hello [world])(!)", then the output should be 1 3 because all the brackets
#are matched and there are 3 pairs of brackets, but if str is "((hello [world])" 
#the the output should be 0 because the brackets do not correctly match up. Only
#"(", ")", "[", and "]" will be used as brackets. If str contains no brackets 
#return 1. 
# 01
def MultipleBrackets(str)
  b1, b2, b3, b4 = 0, 0, 0, 0
  str.chars do |c|
      b1 += 1 if c == "("
      b2 += 1 if c == ")"
      b3 += 1 if c == "["
      b4 += 1 if c == "]"
      return 0 if b2 > b1 || b4 > b3 
  end
  return 0 if b1 != b2 || b3 != b4
  (b1==0 && b3==0) ?  1 : "1 #{b1+b3}"
end    
puts MultipleBrackets("(hello [world])(!)") # 1 3
puts MultipleBrackets("(coder)[byte)]") # 0
puts MultipleBrackets("(c([od]er)) b(yt[e])") # 1 5
puts

puts " ===== 28 Most Free Time ====="
#Using the Ruby language, have the function MostFreeTime(strArr) read the strArr 
#parameter being passed which will represent a full day and will be filled with 
#events that span from time X to time Y in the day. The format of each event will
#be hh:mmAM/PM-hh:mmAM/PM. For example, strArr may be 
#["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"]. 
#Your program will have to output the longest amount of free time available 
#between the start of your first event and the end of your last event in the 
#format: hh:mm. The start event should be the earliest event in the day and the 
#latest event should be the latest event in the day. The output for the previous 
#input would therefore be 01:30 (with the earliest event in the day starting at 
#09:10AM and the latest event ending at 02:45PM). The input will contain at least
#3 events and the events may be out of order. 
# 01
def total_minutes(arr)
  hour, min, meridiem = arr
  hour += 12 if meridiem == "PM" && hour < 12
  
  (hour * 60) + min
end
#===================================
def min_to_str(minutes)
  hour = 0
  minutes -= 60 and hour += 1 until minutes < 60
  
  hour = "0#{hour}" if hour < 10 
  minutes = "0#{minutes}" if minutes < 10
  
  "#{hour}:#{minutes}"
end
#=====================================
def MostFreeTime(strArr)
  greatest = 0
  times = strArr.map{|str|str.split('-').map{|t|t.scan(/\w{1,2}/).map{|c|"AMPM".include?(c) ? 
  c : c.to_i }}}.sort{|a,b| total_minutes(a[0]) <=> total_minutes(b[0])}
  
  1.upto(times.length - 1) do |i|
    freetime = total_minutes(times[i].first) - total_minutes(times[i-1].last)
    greatest = freetime if freetime > greatest
  end
  min_to_str(greatest)
end
puts MostFreeTime(["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"]) #01:30
puts MostFreeTime(["12:15PM-02:00PM","09:00AM-10:00AM","10:30AM-12:00PM"]) #00:30
puts MostFreeTime(["12:15PM-02:00PM","09:00AM-12:11PM","02:02PM-04:00PM"]) #00:04
puts

puts " ===== 29 Overlapping Rectangles ===== "
#Using the Ruby language, have the function OverlappingRectangles(strArr) read 
#the strArr parameter being passed which will represent two rectangles on a 
#Cartesian coordinate plane and will contain 8 coordinates with the first 4 
#making up rectangle 1 and the last 4 making up rectange 2. It will be in the 
#following format: ["(0,0),(2,2),(2,0),(0,2),(1,0),(1,2),(6,0),(6,2)"] Your 
#program should determine the area of the space where the two rectangles overlap,
#and then output the number of times this overlapping region can fit into the 
#first rectangle. For the above example, the overlapping region makes up a 
#rectangle of area 2, and the first rectangle (the first 4 coordinates) makes up 
#a rectangle of area 4, so your program should output 2. The coordinates will 
#all be integers. If there's no overlap between the two rectangles return 0. 
# 01
=begin
def coords(strArr, range, x=[], y=[])
  coordinates = strArr[0].scan(/-?\d+,-?\d+/).map{|str| str.split(',').map(&:to_i)}
  coordinates.each.with_index{|pair, i| x << pair[0] and y << pair[1] if range.include?(i)}
  [(x.min..x.max).to_a, (y.min..y.max).to_a]
end
#=================================================
def merge(one, two)
  result = one + two
  result.keep_if{|num| result.count(num) > 1}.uniq
end
#=================================================
def OverlappingRectangles(strArr)
  first, second = coords(strArr, (0..3)), coords(strArr,(4..7))
  overlap = merge(first[0], second[0]), merge(first[1], second[1])
  return 0 if overlap[0].length < 2 || overlap[1].length < 2
  
  f_width, f_length = first[0].max - first[0].min, first[1].max - first[1].min
  o_width, o_length = overlap[0].max - overlap[0].min, overlap[1].max - overlap[1].min
  
  ((f_width / o_width) * (f_length / o_length)).round
end
=end
def OverlappingRectangles(strArr)
   strArr[0].gsub!(/[()]/, '')
   arr = strArr[0].split(",").map(&:to_i).each_slice(8).to_a
   h1, w1 = arr[0].partition.each_with_index{ |n, i| i.even? }
   h2, w2 = arr[1].partition.each_with_index{ |n, i| i.even? }
   height1, width1 = h1.max-h1.min, w1.max-w1.min
   height2 = [h1.max, h2.max].min - [h1.min, h2.min].max
   width2 =  [w1.max, w2.max].min - [w1.min, w2.min].max
   rec1, rec2 = height1 * width1, height2 * width2
   return 0 if rec2 == 0
   overlap = rec1/rec2
end
puts OverlappingRectangles(["(0,0),(2,2),(2,0),(0,2),(1,0),(1,2),(6,0),(6,2)"]) # 2
puts OverlappingRectangles(["(0,0),(0,-2),(3,0),(3,-2),(2,-1),(3,-1),(2,3),(3,3)"]) #6
puts OverlappingRectangles(["(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)"]) #3
puts

puts " ===== 30 Distinct List ====="
#Using the Ruby language, have the function DistinctList(arr) take the array of 
#numbers stored in arr and determine the total number of duplicate entries. For 
#example if the input is [1, 2, 2, 2, 3] then your program should output 2 
#because there are two duplicates of one of the elements. 
# 01
def DistinctList(arr)
  arr.length - arr.uniq.length
end
puts DistinctList([1, 2, 2, 2, 3]) # 2
puts DistinctList([0,-2,-2,5,5,5]) # 3
puts DistinctList([100,2,101,4]) # 0
puts

puts " ===== 31 Look Say Sequence ===== "
#Using the Ruby language, have the function LookSaySequence(num) take the num 
#parameter being passed and return the next number in the sequence according to 
#the following rule: to generate the next number in a sequence read off the 
#digits of the given number, counting the number of digits in groups of the same 
#digit. For example, the sequence beginning with 1 would be: 1, 11, 21, 1211, ...
#The 11 comes from there being "one 1" before it and the 21 comes from there 
#being "two 1's" before it. So your program should return the next number in the
#sequence given num. 
# 01
def LookSaySequence(num)
    num.to_s.scan(/((\d)\2*)/).map!{|n| n[0].length.to_s + n[1]}.join('').to_i
end
puts LookSaySequence(1211) # 111221
puts LookSaySequence(2466) # 121426
puts LookSaySequence(3425678) # 13141215161718
puts

puts " ===== 32 Number Encoding ===== "
#Using the Ruby language, have the function NumberEncoding(str) take the str 
#parameter and encode the message according to the following rule: encode every 
#letter into its corresponding numbered position in the alphabet. Symbols and 
#spaces will also be used in the input. For example: if str is "af5c a#!" then 
#your program should return 1653 1#!. 
# 01
def NumberEncoding(str)
  alph = ('a'..'z').to_a
  str.downcase.split('').map!{|c| alph.include?(c) ? (alph.index(c) + 1).to_s : c }.join('')
end
puts NumberEncoding("af5c a#!") # 1653 1#!
puts NumberEncoding("hello 45") # 85121215 45
puts NumberEncoding("jaj-a") # 10110-1
puts

puts " ===== 33 Stock Picker ===== "
#Using the Ruby language, have the function StockPicker(arr) take the array of 
#numbers stored in arr which will contain integers that represent the amount in 
#dollars that a single stock is worth, and return the maximum profit that could 
#have been made by buying stock on day x and selling stock on day y where y > x.
#For example: if arr is [44, 30, 24, 32, 35, 30, 40, 38, 15] then your program 
#should return 16 because at index 2 the stock was worth $24 and at index 6 the 
#stock was then worth $40, so if you bought the stock at 24 and sold it at 40, 
#you would have made a profit of $16, which is the maximum profit that could have
#been made with this list of stock prices. 

#If there is not profit that could have been made with the stock prices, then 
#your program should return -1. For example: arr is [10, 9, 8, 2] then your 
#program should return -1.
# 01
def StockPicker(prices)
  max = -1
  until prices.empty?
    today = prices.shift
    prices.each{|future| (profit = future - today) and (max = profit if profit > max) }
  end
  max    
end
puts StockPicker([10, 9, 8, 2]) # -1
puts StockPicker([10,12,4,5,9]) # 5
puts StockPicker([14,20,4,12,5,11]) # 8
puts

puts " ===== 34 Max Subarray ===== "
#Using the Ruby language, have the function MaxSubarray(arr) take the array of 
#numbers stored in arr and determine the largest sum that can be formed by any 
#contiguous subarray in the array. For example, if arr is [-2, 5, -1, 7, -3] 
#then your program should return 11 because the sum is formed by the subarray 
#[5, -1, 7]. Adding any element before or after this subarray would make the sum
#smaller. 
# 01
#def MaxSubarray(arr)
  #answers = []
  #while arr.length > 0
    #a = arr.shift
    #arr.each{ |n| answers << a; a+=n}
    #answers << a
  #end
  #return answers.max 
#end

def MaxSubarray(arr)
  max = nil
  arr.size.times do |i|
    length = arr.size - i
    until length == 0
      sum = arr.slice(i, length).reduce(0, :+)
      (length -= 1) and (max = sum if max == nil || sum > max)
    end
  end
  max
end
puts MaxSubarray([-2, 5, -1, 7, -3]) # 11
puts MaxSubarray([1, -2, 0, 3]) # 3
puts MaxSubarray([3, -1, -1, 4, 3, -1]) # 8
puts

puts " ===== 35 Missing Digit ===== "
#Using the Ruby language, have the function MissingDigit(str) take the str 
#parameter, which will be a simple mathematical formula with three numbers, a 
#single operator (+, -, *, or /) and an equal sign (=) and return the digit that
#completes the equation. In one of the numbers in the equation, there will be an
#x character, and your program should determine what digit is missing. For 
#example, if str is "3x + 12 = 46" then your program should output 4. The x 
#character can appear in any of the three numbers and all three numbers will be 
#greater than or equal to 0 and less than or equal to 1000000. 
# 01
def MissingDigit(str)
  9.downto 0 do |digit|
    equation = str.gsub("=", "==").gsub("x", "#{digit}")
    return digit if eval(equation)
  end
end
puts MissingDigit("3x + 12 = 46") # 4
puts MissingDigit("4 - 2 = x") # 2
puts MissingDigit("1x0 * 12 = 1200") # 0
puts

puts " ===== 36 K Unique Characters ===== "
#Using the Ruby language, have the function KUniqueCharacters(str) take the str 
#parameter being passed and find the longest substring that contains k unique 
#characters, where k will be the first character from the string. The substring 
#will start from the second position in the string because the first character 
#will be the integer k. For example: if str is "2aabbacbaa" there are several 
#substrings that all contain 2 unique characters, namely: 
#["aabba", "ac", "cb", "ba"], but your program should return "aabba" because it 
#is the longest substring. If there are multiple longest substrings, then return
#the first substring encountered with the longest length. k will range from 1 to 6. 
# 01
=begin
def KUniqueCharacters(str)
  result, limit, letters = "", str.slice!(0).to_i, str.chars
  letters.count.times do |i|
    current = []
    i.upto(letters.count - 1) do |sub_idx|
      current << letters[sub_idx]
      current.pop and break if current.uniq.length > limit
    end
    result = current.join('') if current.size > result.size
  end
  result
end
=end

def KUniqueCharacters(str)
  k = str[0].to_i  
  str = str[1..-1] 
  longest = nil 
  (0..str.length-1).each do |start_idx| 
  	(1..str.length).reverse_each do |length| 
  		substr = str.slice(start_idx, length) 
   		longest = substr if substr.split("").uniq.count == k &&(longest == nil || substr.length > longest.length) 
  	end 	
  end
  longest 
end
puts KUniqueCharacters("2aabbacbaa") # aabba
puts KUniqueCharacters("3aabacbebebe") # cbebebe
puts KUniqueCharacters("2aabbcbbbadef") # bbcbbb
puts

puts " ===== 37 Bitmap Holes ===== "
#Using the Ruby language, have the function BitmapHoles(strArr) take the array of
#strings stored in strArr, which will be a 2D matrix of 0 and 1's, and determine
#how many holes, or contiguous regions of 0's, exist in the matrix. A contiguous 
#region is one where there is a connected group of 0's going in one or more of 
#four directions: up, down, left, or right. For example: if strArr is 
#["10111", "10101", "11101", "11111"], then this looks like the following matrix:

# 1 0 1 1 1
# 1 0 1 0 1
# 1 1 1 0 1
# 1 1 1 1 1 

#For the input above, your program should return 2 because there are two separate
#contiguous regions of 0's, which create "holes" in the matrix. You can assume 
#the input will not be empty.
def BitmapHoles(strArr)
    holes = 0
    crawl = Proc.new do |x, y|
        if strArr[x][y] == "0" 
           strArr[x][y] = "!" #fill hole
           crawl.call(x-1, y) if x-1 >= 0 #up
           crawl.call(x+1, y) if x+1 < strArr.length #down
           crawl.call(x, y-1) if y-1 >= 0 #left
           crawl.call(x, y+1) if y+1 < strArr[0].length #right
        end
    end
    0.upto((strArr.length)-1) do |i|
        0.upto((strArr[0].length)-1) do |ii|
            holes +=1 if strArr[i][ii] == "0"
            crawl.call(i,ii) if strArr[i][ii] == "0"
        end
    end
    return holes
end
puts BitmapHoles(["01111", "01101", "00011", "11110"]) # 3
puts BitmapHoles(["1011", "0010"]) # 2
puts BitmapHoles(["10111", "10101", "11101", "11111"]) # 2
puts

puts " ===== 38 Symmetric Tree ===== "
#Using the Ruby language, have the function SymmetricTree(strArr) take the array
#of strings stored in strArr, which will represent a binary tree, and determine 
#if the tree is symmetric (a mirror image of itself). The array will be 
#implemented similar to how a binary heap is implemented, except the tree may not
#be complete and NULL nodes on any level of the tree will be represented with a
##. For example: if strArr is ["1", "2", "2", "3", "#", "#", "3"] then this tree
#looks like the following: 

# missing image here. 

#For the input above, your program should return the string true because the 
#binary tree is symmetric. 
# 01
def SymmetricTree(strArr)
  num = 1
  until strArr.empty?
    current = strArr.slice!(0, num)
    return false if current.reverse != current
    num *= 2
  end
  true
end
puts SymmetricTree(["1", "2", "2", "3", "#", "#", "3"]) # true
puts SymmetricTree(["4", "3", "4"]) # false
puts SymmetricTree(["10", "2", "2", "#", "1", "1", "#"]) # true
puts

puts " ===== 39 Binary Search Tree LCA ===== "
#Using the Ruby language, have the function BinarySearchTreeLCA(strArr) take the 
#array of strings stored in strArr, which will contain 3 elements: the first 
#element will be a binary search tree with all unique values in a preorder 
#traversal array, the second and third elements will be two different values, 
#and your goal is to find the lowest common ancestor of these two values. For 
#example: if strArr is ["[10, 5, 1, 7, 40, 50]", "1", "7"] then this tree looks
#like the following: 

# missing image

#For the input above, your program should return 5 because that is the value of
#the node that is the LCA of the two nodes with values 1 and 7. You can assume 
#the two nodes you are searching for in the tree will exist somewhere in the tree. 
def BinarySearchTreeLCA(strArr)
  values, common, ancestor = strArr[0].scan(/\d+/).map(&:to_i), [strArr[1].to_i, strArr[2].to_i], nil
  left, right, lr_idx = common.sort
  lr_idx = [values.index(left), values.index(right)].min
  
  idx = values.length - 1
  while idx >= 0
    current = values[idx]
    ancestor = current if current <= right && current >= left && idx <= lr_idx
    idx -= 1
  end
  ancestor
end
puts BinarySearchTreeLCA(["[10, 5, 1, 7, 40, 50]", "1", "7"]) # 5
puts BinarySearchTreeLCA(["[10, 5, 1, 7, 40, 50]", "5", "10"]) # 10
puts BinarySearchTreeLCA(["[3, 2, 1, 12, 4, 5, 13]", "5", "13"]) # 12
puts

puts " ===== 40 Binary Tree LCA ===== "
#Using the Ruby language, have the function BinaryTreeLCA(strArr) take the array 
#of strings stored in strArr, which will contain 3 elements: the first element 
#will be a binary tree with all unique values in a format similar to how a binary
#heap is implemented with NULL nodes at any level represented with a #, the 
#second and third elements will be two different values, and your goal is to find
#the lowest common ancestor of these two values. For example: if strArr is 
#["[12, 5, 9, 6, 2, 0, 8, #, #, 7, 4, #, #, #, #]", "6", "4"] then this tree 
#looks like the following: 

 # missing image

#For the input above, your program should return 5 because that is the value of
#the node that is the LCA of the two nodes with values 6 and 4. You can assume 
#the two nodes you are searching for in the tree will exist somewhere in the tree. 
def find_lca(node_locations,tree_arr)
  node_locations = node_locations.sort
  lower,higher = node_locations[0],node_locations[1]
  while true
    if higher[0] == lower[0] && higher[1] == lower[1]
      return tree_arr[lower[0]][lower[1]]
    elsif higher[0] > lower[0]
      higher[0] -= 1
      higher[1] /= 2
    elsif higher[0] ==  lower[0] && !(higher[1] == lower[1])
      lower[0],higher[0] = lower[0]-1,higher[0]-1
      lower[1],higher[1] = lower[1]/2,higher[1]/2
    end
  end
end
#==========================================
def find_node_locations(num,tree_arr)
  tree_arr.each_with_index do |prime_arr,prime_idx|
    prime_arr.each_with_index{|n,sec_idx| return [prime_idx,sec_idx] if n == num}
  end
end
#==========================================
def convert_to_arr_tree(arr)
  tree_arr = []
  idx = 0
  while !(arr.empty?)
    size = 2 ** idx
    sub_arr = []
    size.times{sub_arr << arr.shift}
    tree_arr << sub_arr
    idx += 1
  end
  tree_arr
end
#============================================
def BinaryTreeLCA(strArr)
  # code goes here
  num_arr = strArr.shift.scan(/\d+|\#/)
  nodes = strArr
  tree_arr = convert_to_arr_tree(num_arr)
  node_locations = []
  nodes.each{|num| node_locations << find_node_locations(num,tree_arr)}
  find_lca(node_locations,tree_arr).to_i
end
puts BinaryTreeLCA(["[12, 5, 9, 6, 2, 0, 8, #, #, 7, 4, #, #, #, #]", "6", "4"]) # 5
puts BinaryTreeLCA(["[5, 2, 6, 1, #, 8, 12, #, #, #, #, #, #, 3, #]", "3", "12"]) # 12
puts BinaryTreeLCA(["[5, 2, 6, 1, #, 8, #]", "2", "6"]) # 5
puts

puts " ===== 41 LRU Cache ===== "
#Using the Ruby language, have the function LRUCache(strArr) take the array of 
#characters stored in strArr, which will contain characters ranging from A to Z 
#in some arbitrary order, and determine what elements still remain in a virtual
#cache that can hold up to 5 elements with an LRU cache algorithm implemented. 
#For example: if strArr is ["A", "B", "C", "D", "A", "E", "D", "Z"], then the 
#following steps are taken: 

#(1) A does not exist in the cache, so access it and store it in the cache. 
#(2) B does not exist in the cache, so access it and store it in the cache as well.
#So far the cache contains: ["A", "B"]. 
#(3) Same goes for C, so the cache is now: ["A", "B", "C"]. 
#(4) Same goes for D, so the cache is now: ["A", "B", "C", "D"]. 
#(5) Now A is accessed again, but it exists in the cache already so it is brought
#to the front: ["B", "C", "D", "A"]. 
#(6) E does not exist in the cache, so access it and store it in the cache:
#["B", "C", "D", "A", "E"]. 
#(7) D is accessed again so it is brought to the front: ["B", "C", "A", "E", "D"]. 
#(8) Z does not exist in the cache so add it to the front and remove the least 
#recently used element: ["C", "A", "E", "D", "Z"]. 

#Now the caching steps have been completed and your program should return the 
#order of the cache with the elements joined into a string, separated by a hyphen.
#Therefore, for the example above your program should return C-A-E-D-Z. 
# 01
def LRUCache(strArr)
  elements = []
  strArr.each do |current|
    elements.delete(current) if elements.include?(current)
    elements.shift if elements.length == 5
    
    elements << current
  end
  elements.join("-")
end
puts LRUCache(["A", "B", "C", "D", "A", "E", "D", "Z"]) # C-A-E-D-Z
puts LRUCache(["A", "B", "A", "C", "A", "B"]) # C-A-B
puts LRUCache(["A", "B", "C", "D", "E", "D", "Q", "Z", "C"]) # E-D-Q-Z-C
puts

puts " ===== 42 Tree Constructor ===== "
#Using the Ruby language, have the function TreeConstructor(strArr) take the array
#of strings stored in strArr, which will contain pairs of integers in the following 
#format: (i1,i2), where i1 represents a child node in a tree and the second integer
#i2 signifies that it is the parent of i1. For example: if strArr is 
#["(1,2)", "(2,4)", "(7,2)"], then this forms the following tree: 

# missing image 

#which you can see forms a proper binary tree. Your program should, in this case,
#return the string true because a valid binary tree can be formed. If a proper 
#binary tree cannot be formed with the integer pairs, then return the string false.
#All of the integers within the tree will be unique, which means there can only be
#one node in the tree with the given integer value. 
def TreeConstructor(strArr)
  tree = Hash.new{|tree,i2| tree[i2] = []}
  strArr.each do |str|
    i1, i2 = str.scan(/\d+/)
    tree[i2] << i1
    return false if tree[i2].length > 2 || tree.values.flatten.count(i1) > 1
  end
  true
end
puts TreeConstructor(["(1,2)", "(2,4)", "(7,2)"]) # true
puts TreeConstructor(["(1,2)", "(3,2)", "(2,12)", "(5,2)"]) # false
puts TreeConstructor(["(1,2)", "(2,4)", "(5,7)", "(7,2)", "(9,5)"]) # true
puts

puts " ===== 43 Array Min Jumps ===== "
#Using the Ruby language, have the function ArrayMinJumps(arr) take the array of 
#integers stored in arr, where each integer represents the maximum number of 
#steps that can be made from that position, and determine the least amount of 
#jumps that can be made to reach the end of the array. For example: if arr is 
#[1, 5, 4, 6, 9, 3, 0, 0, 1, 3] then your program should output the number 3 
#because you can reach the end of the array from the beginning via the following 
#steps: 1 -> 5 -> 9 -> END or 1 -> 5 -> 6 -> END. Both of these combinations 
#produce a series of 3 steps. And as you can see, you don't always have to take
#the maximum number of jumps at a specific position, you can take less jumps even
#though the number is higher. 

#If it is not possible to reach the end of the array, return -1. 
# 01
def find_largest_combined(arr)
  s_max = [0, 0, 0] #arr = [combined_value, value, idx]
  arr.each_with_index { |item, idx| value = item + idx
    if value > s_max[1]
      s_max[0] = item
      s_max[1] = value
      s_max[2] = idx
    end
  }
  return s_max
end
#=================================
def ArrayMinJumps(arr)
    return -1 if arr[0] <= 0
    return 0 if arr.length <= 1
    step_length = arr.shift
    remaining = []
    step_count = 1
    until arr.empty?
        steps = [] + remaining
        step_length.times do
            steps << arr.shift
        end
        return step_count if arr.empty?
        maxed = find_largest_combined(steps)
        remaining = steps[maxed[2]..-1]
        step_length = maxed[0]
        return -1 if step_length <= 0
        step_count += 1
    end
    return step_count
end
puts ArrayMinJumps([1, 5, 4, 6, 9, 3, 0, 0, 1, 3]) # 3
puts ArrayMinJumps([3, 4, 2, 1, 1, 100]) # 2
puts ArrayMinJumps([1, 3, 6, 8, 2, 7, 1, 2, 1, 2, 6, 1, 2, 1, 2]) # 4
puts

puts " ===== 44 Nearest Smaller Values ===== "
#Using the Ruby language, have the function NearestSmallValues(arr) take the array
#of integers stored in arr, and for each element in the list, search all the 
#previous values for the nearest element that is smaller than the current element 
#and create a new list from these numbers. If there is no element before a certain
#position that is smaller, input a -1. For example: if arr is [5, 2, 8, 3, 9, 12] 
#then the nearest smaller values list is [-1, -1, 2, 2, 3, 9]. The logic is as follows: 

#For 5, there is no smaller previous value so the list so far is [-1]. 
#For 2, there is also no smaller previous value, so the list is now [-1, -1].
#For 8, the nearest smaller value is 2 so the list is now [-1, -1, 2].
#For 3, the nearest smaller value is also 2, so the list is now [-1, -1, 2, 2]. 
#This goes on to produce the answer above. Your program should take this final 
#list and return the elements as a string separated by a space: -1 -1 2 2 3 9 
# 01
def NearestSmallerValues(arr)
  result = []
  arr.each.with_index do |current, i|
    found = false
    (i - 1).downto(0) do |i2|
      previous = arr[i2]
      result << previous and found = true if previous <= current && found == false
    end
    result << -1 if found == false
  end
  result.join(" ")
end
puts NearestSmallerValues([5, 2, 8, 3, 9, 12]) # -1 -1 2 2 3 9
puts NearestSmallerValues([5, 3, 1, 9, 7, 3, 4, 1]) # -1 -1 -1 1 1 1 3 1
puts NearestSmallerValues([2, 4, 5, 1, 7]) # -1 2 4 -1 1
puts

puts " ===== 45 Matrix Spiral ===== "
#Using the Ruby language, have the function MatrixSpiral(strArr) read the array 
#of strings stored in strArr which will represent a 2D N matrix, and your program 
#should return the elements after printing them in a clockwise, spiral order. 
#You should return the newly formed list of elements as a string with the numbers 
#separated by commas. For example: if strArr is "[1, 2, 3]", "[4, 5, 6]", "[7, 8, 9]" 
#then this looks like the following 2D matrix: 

# 1 2 3
# 4 5 6
# 7 8 9 

#So your program should return the elements of this matrix in a clockwise, spiral
#order which is: 1,2,3,6,9,8,7,4,5 
# 01
def MatrixSpiral(strArr)
  result, position, matrix = [], %w(top right down left), strArr.map{|arr| arr.scan(/-?\d+/)}
  
  until matrix.empty?
    case position.first
      when "top" then result << matrix.shift
      when "right" then result << matrix.pop
      when "down" then result << matrix.pop.reverse
      when "left" then result << matrix.shift.reverse
    end
    position.rotate! and matrix = matrix.transpose
  end
  result.flatten.join(",")
end
puts MatrixSpiral(["[1, 2, 3]", "[4, 5, 6]", "[7, 8, 9]"]) # 1,2,3,6,9,8,7,4,5 
puts MatrixSpiral(["[1, 2]", "[10, 14]"]) # 1,2,14,10
puts MatrixSpiral(["[4, 5, 6, 5]", "[1, 1, 2, 2]", "[5, 4, 2, 9]"]) # 4,5,6,5,2,9,2,4,5,1,1,2
puts

puts " ===== 46 Word Split ===== "
#Using the Ruby language, have the function WordSplit(strArr) read the array of
#strings stored in strArr, which will contain 2 elements: the first element will
#be a sequence of characters, and the second element will be a long string of 
#comma-separated words, in alphabetical order, that represents a dictionary of 
#some arbitrary length. For example: strArr can be: 
#["hellocat", "apple,bat,cat,goodbye,hello,yellow,why"]. Your goal is to determine 
#if the first element in the input can be split into two words, where both words 
#exist in the dictionary that is provided in the second input. In this example, 
#the first element can be split into two words: hello and cat because both of 
#those words are in the dictionary. 

#Your program should return the two words that exist in the dictionary separated 
#by a comma. So for the example above, your program should return hello,cat. 
#There will only be one correct way to split the first element of characters into
#two words. If there is no way to split string into two words that exist in the 
#dictionary, return the string not possible. The first element itself will never 
#exist in the dictionary as a real word.
# 01
def WordSplit(strArr)
  result, words = "not possible", strArr[1].scan(/\w+/)
  words.each{|first| words.each{|second| result = "#{first},#{second}" if first + second == strArr[0] }}
  result
end
puts WordSplit(["hellocat", "apple,bat,cat,goodbye,hello,yellow,why"]) # hello,cat
puts WordSplit(["baseball", "a,all,b,ball,bas,base,cat,code,d,e,quit,z"]) # base,ball
puts WordSplit(["abcgefd", "a,ab,abc,abcg,b,c,dog,e,efd,zzzz"]) # abcg,efd
puts

puts " ===== 47 Pair Searching ===== "
#Using the Ruby language, have the function PairSearching(num) take the num 
#parameter being passed and perform the following steps. First take all the single 
#digits of the input number (which will always be a positive integer greater than 1) 
#and add each of them into a list. Then take the input number and multiply it by 
#any one of its own integers, then take this new number and append each of the 
#digits onto the original list. Continue this process until an adjacent pair of 
#the same number appears in the list. Your program should return the least number
#of multiplications it took to find an adjacent pair of duplicate numbers. 

#For example: if num is 134 then first append each of the integers into a list: 
#[1, 3, 4]. Now if we take 134 and multiply it by 3 (which is one of its own integers),
#we get 402. Now if we append each of these new integers to the list, we get:
#[1, 3, 4, 4, 0, 2]. We found an adjacent pair of duplicate numbers, namely 4 and 4. 
#So for this input your program should return 1 because it only took 1 multiplication
#to find this pair. 

#Another example: if num is 46 then we append these integers onto a list: 
#[4, 6]. If we multiply 46 by 6, we get 276, and appending these integers onto the 
#list we now have: [4, 6, 2, 7, 6]. Then if we take this new number, 276, and 
#multiply it by 2 we get 552. Appending these integers onto the list we get: 
#[4, 6, 2, 7, 6, 5, 5, 2]. Your program should therefore return 2 because it took 
#2 multiplications to find a pair of adjacent duplicate numbers (5 and 5 in this 
#case). 
# 01
def adjacent_repeats?(arr)
  1.upto(arr.length - 1) do |i|
    prev, curr = arr[i- 1], arr[i]
    return true if prev == curr
  end
  false
end
#======================================================
def PairSearching(num)
  count, found, queue = 0, false, [[num.to_s.chars]]

  until found
    new = [] and count += 1
    found = true if num == 1 || num == 0
    
    queue.last.each do |current|
      current.each do |digit|
        product = (current.join('').to_i * digit.to_i).to_s.chars
        adjacent_repeats?(current + product) ? found = true : new << product
      end
    end
    queue << new
  end
  count
end
puts PairSearching(134) # 1
puts PairSearching(8) # 3
puts PairSearching(198) # 2
puts

puts " ===== 48 Boggle Solver ===== "
# Using the Ruby language, have the function BoggleSolver(strArr) read the array
#of strings stored in strArr, which will contain 2 elements: the first element 
#will represent a 4x4 matrix of letters, and the second element will be a long 
#string of comma-separated words each at least 3 letters long, in alphabetical 
#order, that represents a dictionary of some arbitrary length. For example: 
#strArr can be: ["rbfg, ukop, fgub, mnry", "bog,bop,gup,fur,ruk"]. Your goal is
#to determine if all the comma separated words as the second parameter exist in 
#the 4x4 matrix of letters. For this example, the matrix looks like the following: 

# r b f g 
# u k o p 
# f g u b 
# m n r y 

#The rules to make a word are as follows: 

#1. A word can be constructed from sequentially adjacent spots in the matrix, 
#where adjacent means moving horizontally, vertically, or diagonally in any direction.
#2. A word cannot use the same location twice to construct itself. 

#The rules are similar to the game of Boggle. So for the example above, all the 
#words exist in that matrix so your program should return the string true. 
#If all the words cannot be found, then return a comma separated string of the 
#words that cannot be found, in the order they appear in the dictionary. 
# 01
def graph(values)
  positions = {}
  values.length.times{|i| values[i].length.times{|j| positions[[i,j]] = values[i][j] }}
  positions
end
#============================================================
def valid?(word, positions)
  positions.each do |position, value|
    next if !word.include?(value)
    queue = [[[[position]]]]
    
    until queue.flatten.empty?
      new = []
      queue.pop.each do |levels|
        levels.last.each do |previous|
          current, coordinates, letters = [], levels.flatten(1), levels.flatten(1).map{|c| positions[c]}
          
          adjacents(previous, positions).each do |ij, adj|
            next if !word.include?(adj) || coordinates.include?(ij)
            (current << ij) and (letters << adj) if letters.count(adj) < word.count(adj)
          end
          
          return true if letters.sort == word.sort
          new << [coordinates, current] if !current.empty?
        end
      end
      queue << new
    end
  end
  false
end
#========================================================
def adjacents(coordinate, positions)
  adj = {}
  -1.upto(1) do |i2|
    -1.upto(1) do |j2|
      i, j = coordinate[0] + i2, coordinate[1] + j2
      next if (i < 0) || (j < 0) || (i > 3) || (j > 3) || coordinate == [i2, j2]
      adj[[i,j]] = positions[[i,j]]
    end
  end
  adj
end
#=========================================================
def BoggleSolver(strArr)
  letters, tests = strArr.map{|str| str.scan(/\w+/).map{|w| w.split('') }}
  result, positions = [], graph(letters)
  
  tests.each do |word| 
    result << word.join('') if not valid?(word, positions)
  end
  
  result.empty? ? true : result.join(',')
end
puts BoggleSolver(["rbfg, ukop, fgub, mnry", "bog,bop,gup,fur,ruk"]) # true
puts BoggleSolver(["aaey, rrum, tgmn, ball", "all,ball,mur,raeymnl,rumk,tall,true,trum,yes"])
puts BoggleSolver(["aaey, rrum, tgmn, ball", "all,ball,mur,raeymnl,tall,true,trum"]) # true
puts 

puts " ===== 49 HTML Elements ===== "
#Using the Ruby language, have the function HTMLElements(str) read the str parameter
#being passed which will be a string of HTML DOM elements and plain text. The 
#elements that will be used are: b, i, em, div, p. For example: if str is "
#<div><b><p>hello world</p></b></div>" then this string of DOM elements is nested 
#correctly so your program should return the string true. 

#If a string is not nested correctly, return the first element encountered where,
#if changed into a different element, would result in a properly formatted string.
#If the string is not formatted properly, then it will only be one element that 
#needs to be changed. For example: if str is "<div><i>hello</i>world</b>" then 
#your program should return the string div because if the first <div> element were
#changed into a <b>, the string would be properly formatted. 
# 01
def HTMLElements(str)
  result, opened_count, closed_count, elements = [], 0, 0, str.scan(/<(\/?\w+)>/).flatten
  
  elements.each do |element|
    opened, closed, complete = element, element[1..-1], false
    if element.include?("/")
      result.each.with_index{|prev, i| result.slice!(i) and complete = true if prev == closed && !complete}
      closed_count += 1 and (result << closed if not complete)
    else
      opened_count += 1 and result << opened
    end
  end
  return true if result.empty?
  opened_count > closed_count ? result.pop : result.shift
end
puts HTMLElements("<div><i>hello</i>world</b>") # div
puts HTMLElements("<div>abc</div><p><em><i>test test test</b></em></p>") # i
puts HTMLElements("<div><div><b></b></div></p>") # div
puts

puts " ===== 50 Missing Digit II ===== "
#Using the Ruby language, have the function MissingDigitII(str) take the str 
#parameter, which will be a simple mathematical formula with three numbers, a 
#single operator (+, -, *, or /) and an equal sign (=) and return the two digits
#that complete the equation. In two of the numbers in the equation, there will
#be a single ? character, and your program should determine what digits are 
#missing and return them separated by a space. For example, if str is 
#"38?5 * 3 = 1?595" then your program should output 6 1. 

#The ? character will always appear in both the first number and the last number 
#in the mathematical expression. There will always be a unique solution. 
# 01
def invalid_num?(replacement, str)
  /(\d*\?\d*)/.match(str)[0][0] == "?" && replacement == 0
end
#=========================================================
def MissingDigitII(str)
  str.gsub!("=", "==")
  
  9.downto(0) do |first|
    next if invalid_num?(first, str)
    half = str.sub("?", "#{first}")
    9.downto(0) do |second|
      next if invalid_num?(second, half)
      equation = half.sub("?", "#{second}").gsub(/\d+/){|m| m + ".0" }
      return "#{first} #{second}" if eval(equation)
    end
  end
end
puts MissingDigitII("38?5 * 3 = 1?595") # 6 1
puts MissingDigitII("56? * 106 = 5?678") # 3 9
puts MissingDigitII("18?1 + 9 = 189?") # 8 0
puts

puts " ===== 51 Palindromic Substring ===== "
#Using the Ruby language, have the function PalindromicSubstring(str) take the 
#str parameter being passed and find the longest palindromic substring, which 
#means the longest substring which is read the same forwards as it is backwards.
#For example: if str is "abracecars" then your program should return the string
#racecar because it is the longest palindrome within the input string. 

#The input will only contain lowercase alphabetic characters. The longest 
#palindromic substring will always be unique, but if there is none that is longer
#than 2 characters, return the string none. 
# 01
def palindrome?(word)
  word == word.reverse
end
#=====================================================
def PalindromicSubstring(str)
  result = nil
  str.chars.each_index do |position|
    (position + 2).upto(str.length - 1) do |range|
      current = str[position..range]
      result = current if palindrome?(current) && (result == nil || current.length > result.length)
    end
  end
  result.nil? ? "none" : result
end
puts PalindromicSubstring("abracecars") # racecar
puts PalindromicSubstring("hellosannasmith") # sannas
puts PalindromicSubstring("abcdefgg") # none
puts

puts " ===== 52 Trapping Water ===== "
#Using the Ruby language, have the function TrappingWater(arr) take the array of 
#non-negative integers stored in arr, and determine the largest amount of water
#that can be trapped. The numbers in the array represent the height of a building
#(where the width of each building is 1) and if you imagine it raining, water 
#will be trapped between the two tallest buildings. For example: if arr is 
#[3, 0, 0, 2, 0, 4] then this array of building heights looks like the following
#picture if we draw it out: 

# missing image 

#Now if you imagine it rains and water gets trapped in this picture, then it'll 
#look like the following (the x's represent water): 

 

#This is the most water that can be trapped in this picture, and if you calculate 
#the area you get 10, so your program should return 10. 
# 01
def TrappingWater(arr)
  greatest = 0
  arr.each.with_index do |first, i|
    arr.each.with_index do |second, i2|
      minimum, between = [first, second].min, arr.slice(i + 1, i2 - i - 1)
      next if i + 1 >= i2 || between.max >= minimum
      area = (minimum * between.length) - between.reduce(0, :+)
      greatest = area if area > greatest
    end
  end
  greatest 
end
puts TrappingWater([3, 0, 0, 2, 0, 4]) # 10
puts TrappingWater([1, 2, 1, 2]) # 1
puts TrappingWater([0, 2, 4, 0, 2, 1, 2, 6]) #11
puts

puts " ===== 53 Matrix Path ===== "
#Using the Ruby language, have the function MatrixPath(strArr) take the strArr 
#parameter being passed which will be a 2D matrix of 0 and 1's of some arbitrary 
#size, and determine if a path of 1's exists from the top-left of the matrix to 
#the bottom-right of the matrix while moving only in the directions: up, down, 
#left, and right. If a path exists your program should return the string true, 
#otherwise your program should return the number of locations in the matrix where
#if a single 0 is replaced with a 1, a path of 1's will be created successfully. 
#If a path does not exist and you cannot create a path by changing a single 
#location in the matrix from a 0 to a 1, then your program should return the 
#string not possible. For example: if strArr is ["11100", "10011", "10101", "10011"] 
#then this looks like the following matrix: 

# 1 1 1 0 0
# 1 0 0 1 1
# 1 0 1 0 1
# 1 0 0 1 1 

#For the input above, a path of 1's from the top-left to the bottom-right does not
#exist. But, we can change a 0 to a 1 in 2 places in the matrix, namely at locations: 
#[0,3] or [1,2]. So for this input your program should return 2. The top-left and
#bottom-right of the input matrix will always be 1's. 
# 01
def next_path(prev, m, i, j, value = "0")
  [[i,j+1], [i,j-1], [i+1,j], [i-1,j]].reject do |a| 
    prev.include?(a) || a[0]<0 || a[1]<0 || a[0]>=m.length || 
    a[1]>=m[0].length || m[a[0]][a[1]] == value
  end
end
#===================================================================
def MatrixPath(strArr)
  paths, result, finish = [[[[0,0]]]], [], [(strArr.length- 1), (strArr[0].length- 1)]
  until paths.flatten.empty?
    new = [] 
    paths.pop.each do |route|
      number_of_holes = route.reject{|coord| strArr[coord[0]][coord[1]] == "1"}.length
      possible = next_path(route, strArr, route.last[0], route.last[1])
      possible.each do |node|
        current = route.clone << node
        node == finish ? (number_of_holes == 0 ? (return true) : result << current) : new << current
      end
      if possible.empty? && number_of_holes == 0
        next_path(route, strArr, route.last[0], route.last[1], "1").each do |hole|
          current = route.clone << hole
          new << current if !next_path(current, strArr, hole[0], hole[1]).empty?
        end
      end
    end
    paths << new
  end
  complete_paths = result.map{|route| route.reject!{|coord| strArr[coord[0]][coord[1]] == "1" }}.uniq

  complete_paths.empty? ? "not possible" : complete_paths.length
end
puts MatrixPath(["11100", "10011", "10101", "10011"]) # 2
puts MatrixPath(["10000", "11011", "10101", "11001"]) # 1
puts MatrixPath(["1000001", "1001111", "1010101"]) # not possible
puts

puts " ===== 54 Seating Students ===== "
#Using the Ruby language, have the function SeatingStudents(arr) read the array 
#of integers stored in arr which will be in the following format: 
#[K, r1, r2, r3, ...] where K represents the number of desks in a classroom, and
#the rest of the integers in the array will be in sorted order and will represent
#the desks that are already occupied. All of the desks will be arranged in 2 
#columns, where desk #1 is at the top left, desk #2 is at the top right, desk #3 
#is below #1, desk #4 is below #2, etc. Your program should return the number of 
#ways 2 students can be seated next to each other. This means 1 student is on the
#left and 1 student on the right, or 1 student is directly above or below the other
#student. 

#For example: if arr is [12, 2, 6, 7, 11] then this classrooms looks like the 
#following picture: 

# missing image 

#Based on above arrangement of occupied desks, there are a total of 6 ways to 
#seat 2 new students next to each other. The combinations are: 
#[1, 3], [3, 4], [3, 5], [8, 10], [9, 10], [10, 12]. So for this input your 
#program should return 6. K will range from 2 to 24 and will always be an even
#number. After K, the number of occupied desks in the array can range from 0 to K. 
# 01
def SeatingStudents(arr)
  seat_c, seat_t  = 0, arr.shift
  seats = 1.upto(seat_t).to_a
  arr.each {|n| indx = seats.index(n); seats[indx] = "#"}
  odds, evens = [], []
  ((seats.length)/2).times { odds << seats.shift; evens << seats.shift}
  ((odds.length)-1).times do |i|
      seat_c += 1 if odds[i] != "#" and odds[i+1] != "#"
      seat_c += 1 if odds[i] != "#" and evens[i] != "#"
  end
  seat_c += 1 if odds.last != "#" and evens.last != "#"
  ((evens.length)-1).times do |i|
      seat_c += 1 if evens[i] != "#" and evens[i+1] != "#"
  end   
  return seat_c
end
puts SeatingStudents([12, 2, 6, 7, 11]) # 6
puts SeatingStudents([6, 4]) # 4
puts SeatingStudents([8, 1, 8]) # 6
puts

puts " ===== 55 Longest Matrix Path ===== "
#Using the Ruby language, have the function LongestMatrixPath(strArr) take the 
#array of strings stored in strArr, which will be an NxM matrix of positive 
#single-digit integers, and find the longest increasing path composed of distinct
#integers. When moving through the matrix, you can only go up, down, left, and 
#right. For example: if strArr is ["345", "326", "221"], then this looks like the 
#following matrix: 

# 3 4 5
# 3 2 6
# 2 2 1 

#For the input above, the longest increasing path goes from: 3 -> 4 -> 5 -> 6. 
#Your program should return the number of connections in the longest path, so 
#therefore for this input your program should return 3. There may not necessarily 
#always be a longest path within the matrix. 
# 01
def move x, y, strArr, count, start
    if (strArr[x][y]).to_i > start
        count += 1
        walk (x),y, strArr,count
    else
        $longest << count
    end
end
def walk x, y, strArr, count
    start = (strArr[x][y]).to_i
    "start#{start} [#{x}],[#{y}] count#{count}"
    if x-1 >=0 #up
       move (x-1),y,strArr, count, start
    end 
    if x+1 < strArr.length #down
       move (x+1),y,strArr,count, start
    end
    if y-1 >= 0 #left
        move x, (y-1),strArr,count, start
    end
    if y+1 < strArr[x].length
       move x, (y+1), strArr, count, start
    end
end

def LongestMatrixPath(strArr)
  count = 0
  $longest = []
  strArr.each_with_index do |str, i|
      ii = 0
      str.chars do |c|
          walk i,ii,strArr,count
          ii += 1
      end
  end
  #puts "#{$longest}"
  high = $longest.max
  return high
end
puts LongestMatrixPath(["345", "326", "221"]) # 3
puts LongestMatrixPath(["12256", "56219", "43215"]) # 5
puts LongestMatrixPath(["67", "21", "45"]) # 3
puts

puts " ===== 56 Min Window Substring ===== "
#Using the Ruby language, have the function MinWindowSubstring(strArr) take the 
#array of strings stored in strArr, which will contain only two strings, the 
#first parameter being the string N and the second parameter being a string K of
#some characters, and your goal is to determine the smallest substring of N that
#contains all the characters in K. For example: if strArr is ["aaabaaddae", "aed"] 
#then the smallest substring of N that contains the characters a, e, and d is "dae" 
#located at the end of the string. So for this example your program should return
#the string dae. 

#Another example: if strArr is ["aabdccdbcacd", "aad"] then the smallest substring
#of N that contains all of the characters in K is "aabd" which is located at the
#beginning of the string. Both parameters will be strings ranging in length from
#2 to 50 characters and all of K's characters will exist somewhere in the string N.
#Both strings will only contains lowercase alphabetic characters. 
# 01
def MinWindowSubstring(strArr)
  str, substr = strArr
  winners = []
  (str.length).times do
      a = ""
      str.chars do |c|
          a += c
          flag = true
          substr.chars{|d| flag = false if substr.count(d) > a.count(d)}
          winners << a if flag
      end
      str.slice!(0)
  end
  winners = winners.sort_by{|x| x.length}
  return winners.first
end
puts MinWindowSubstring(["aaabaaddae", "aed"]) # dae
puts MinWindowSubstring(["aabdccdbcacd", "aad"]) #aabd
puts MinWindowSubstring(["ahffaksfajeeubsne", "jefaa"]) # aksfaje
puts MinWindowSubstring(["aaffhkksemckelloe", "fhea"]) # affhkkse
puts

puts " ===== 57 Matrix Chains ===== "
#Using the Ruby language, have the function MatrixChains(arr) read the array of 
#positive integers stored in arr where every pair will represent an NxM matrix. 
#For example: if arr is [1, 2, 3, 4] this means you have a 1x2, 2x3, and a 3x4 
#matrix. So there are N-1 total matrices where N is the length of the array. 
#Your goal is to determine the least number of multiplications possible after 
#multiplying all the matrices. Matrix multiplication is associative so (A*B)*C 
#is equal to A*(B*C). 

#For the above example, let us assume the following letters represent the different
#matrices: A = 1x2, B = 2x3, and C = 3x4. Then we can multiply the matrices in 
#the following orders: (AB)C or A(BC). The first ordering requires (1*2*3) = 6 
#then we multiply this new 1x3 matrix by the 3x4 matrix and we get (1*3*4) = 12. 
#So in total, this ordering required 6 + 12 = 18 multiplications. Your program 
#should therefore return 18 because the second ordering produces more multiplications.
#The input array will contain between 3 and 30 elements. 
# 01
#puts MatrixChains([1, 2, 3, 4]) # 18
#puts MatrixChains([2, 3, 4]) # 24
#puts MatrixChains([1, 4, 5, 6, 8]) # 98
puts

puts " ===== 58 Histogram Area ===== "
#Using the Ruby language, have the function HistogramArea(arr) read the array of 
#non-negative integers stored in arr which will represent the heights of bars on 
#a graph (where each bar width is 1), and determine the largest area underneath 
#the entire bar graph. For example: if arr is [2, 1, 3, 4, 1] then this looks 
#like the following bar graph: 

# missing image 

#You can see in the above bar graph that the largest area underneath the graph is
#covered by the x's. The area of that space is equal to 6 because the entire width
#is 2 and the maximum height is 3, therefore 2 * 3 = 6. Your program should return 6.
#The array will always contain at least 1 element. 
# 01
def HistogramArea(arr)
    largest_area = arr[0]
    
    0.upto(arr.length-1) do |idx1|
       idx1.upto(arr.length-1) do |idx2|
           range = arr[idx1..idx2]
           area = range.min * range.length
            largest_area = area if area > largest_area
       end
    end
    largest_area
end
puts HistogramArea([2, 1, 3, 4, 1]) # 6
puts HistogramArea([6, 3, 1, 4, 12, 4]) # 12
puts HistogramArea([5, 6, 7, 4, 1]) # 16
puts

puts " ===== 59 Matching Characters ===== "
#Using the Ruby language, have the function MatchingCharacters(str) take the str 
#parameter being passed and determine the largest number of unique characters that
#exists between a pair of matching letters anywhere in the string. For example: 
#if str is "ahyjakh" then there are only two pairs of matching letters, the two 
#a's and the two h's. Between the pair of a's there are 3 unique characters:
#h, y, and j. Between the h's there are 4 unique characters: y, j, a, and k. 
#So for this example your program should return 4. 

#Another example: if str is "ghececgkaem" then your program should return 5 
#because the most unique characters exists within the farthest pair of e characters.
#The input string may not contain any character pairs, and in that case your 
#program should just return 0. The input will only consist of lowercase alphabetic 
#characters.
# 01
def MatchingCharacters(str)
  matching_letters = Hash.new([])
  unique_chars_count = 0
  
  str.each_char.with_index do |letter, idx|
    matching_letters[letter] += [idx] if str.count(letter) > 1
  end
  
  matching_letters.each do |letter, indices|
    current_count = str[indices.first + 1...indices.last].chars.uniq.size
    unique_chars_count = current_count if current_count > unique_chars_count
  end
  
  unique_chars_count
end
puts MatchingCharacters("ahyjakh") # 5
puts MatchingCharacters("mmmerme") # 3
puts MatchingCharacters("abccdefghi") # 0
puts

puts " ===== 60 Tenary Converter ===== "
#Using the Ruby language, have the function TernaryConverter(num) take the num 
#parameter being passed, which will always be a positive integer, and convert it
#into a ternary representation. For example: if num is 12 then your program 
#should return 110. 
# 01
#def TernaryConverter(num)
  #return num.to_s(base=3)
#end
def TernaryConverter(num)
  result = ''
  until num < 3
    num, remainder = num.divmod(3)
    result.prepend(remainder.to_s)
  end
  result.prepend(num.to_s)
end  
puts TernaryConverter(12) # 110
puts TernaryConverter(21) # 210
puts TernaryConverter(67) # 2111
puts

puts " ===== 61 Linear Congruence ===== "
#Using the Ruby language, have the function LinearCongruence(str) read the str 
#parameter being passed which will be a linear congruence equation in the form: 
#"ax = b (mod m)" Your goal is to solve for x and return the number of solutions 
#to x. For example: if str is "32x = 8 (mod 4)" then your program should return 
#4 because the answers to this equation can be either 0, 1, 2, or 3. 
# 01
#puts LinearCongruence("32x = 8 (mod 4)") # 4
#puts LinearCongruence("12x = 5 (mod 2)") # 0
#puts LinearCongruence("12x = 4 (mod 2)") # 2
puts

puts " ===== 62 Formatted Number ===== "
#Using the Ruby language, have the function FormattedNumber(strArr) take the strArr
#parameter being passed, which will only contain a single element, and return the
#string true if it is a valid number that contains only digits with properly placed 
#decimals and commas, otherwise return the string false. For example: if strArr is 
#["1,093,222.04"] then your program should return the string true, but if the input
#were ["1,093,22.04"] then your program should return the string false. The input 
#may contain characters other than digits. 
# 01
def FormattedNumber(str)
  str = str.first
  return false if str =~ /[^\d\.\,]/
  if str.include?('.')
    return false if str.count('.') > 1 || str.start_with?('.') || str.end_with?('.')
    str = str.split('.').first
  end
  if str.include?(',')
    return false if str.start_with?(',') || str.end_with?(',')
    parts = str.split(',')
    parts.each_with_index do |part, idx|
      return false if part.empty? || part.size > 3
      next if idx == 0
      return false if part.size < 3
    end
  else
    return false if str.size > 3
  end
  true
end
puts FormattedNumber(["1,093,222.04"]) #true
puts FormattedNumber(["1,093,22.04"]) # false
puts FormattedNumber(["0.232567"]) # true
puts FormattedNumber(["2,567.00.2"]) # false
puts

puts " ===== 63 Largest Row Column ===== "
#Using the Ruby language, have the function LargestRowColumn(strArr) read the 
#strArr parameter being passed which will be a 2D matrix of some arbitrary size 
#filled with positive integers. Your goal is to determine the largest number that
#can be found by adding up three digits in the matrix that are within the same path,
#where being on the same path means starting from one of the elements and then 
#moving either up, down, left, or right onto the next element without reusing 
#elements. One caveat though, and that is when you calculate the sum of three 
#digits, you should split the sum into two digits and treat the new digits as a 
#row/column position in the matrix. So your goal is actually to find the sum of 
#three digits that sums to the largest position in the matrix without going out 
#of the bounds. For example: if strArr is ["345", "326", "221"] then this looks 
#like the following matrix: 

# 3 4 5
# 3 2 6
# 2 2 1 

#The solution to this problem is to sum the bolded elements, 4 + 2 + 6, which 
#equals 12. Then you take the solution, 12, and split it into two digits: 1 and 2 
#which represents row 1, column 2 in the matrix. This is the largest position you 
#can get in the matrix by adding up 3 digits so your program should return 12. 
#If you for example added up 4 + 5 + 6 in the matrix you would get 15 which is 
#larger than 12, but row 1, column 5 is out of bounds. It's also not possible 
#with the current matrix to sum to any of the following numbers: 20, 21, 22. 
#If you find a sum that is only a single digit, you can treat that as row 0, 
#column N where N is your sum. 
# 01
def test_case(row,col,maxr,maxc)
  out = [[[row,col]]]
  temp = []
  
  (0..1).each do |idx|
    
    out.each do |arr|    
      if arr[-1][0] + 1 <= maxr && !arr.any?{|a| a == [arr[-1][0] + 1,arr[-1][1]]}
        temp << (arr + [[arr[-1][0] + 1, arr[-1][1]]])
      end
      if arr[-1][0] - 1 >= 0 && !arr.any?{|a| a == [arr[-1][0] - 1,arr[-1][1]]}
        temp << (arr + [[arr[-1][0] - 1, arr[-1][1]]])
      end
      if arr[-1][1] + 1 <= maxc && !arr.any?{|a| a == [arr[-1][0] ,arr[-1][1] + 1]}
        temp << (arr + [[arr[-1][0], arr[-1][1] + 1]])
      end
      if arr[-1][1] -1  >= 0 && !arr.any?{|a| a == [arr[-1][0] ,arr[-1][1] - 1]}
        temp << (arr + [[arr[-1][0], arr[-1][1] - 1]])
      end
    end
  
    out = temp.clone
    temp = []
  end
    out
end
#puts( test_case(1,1,1,4).inspect)
#===========================================
def split(num)
  if num > 9  
    row = num.to_s.split("")[0].to_i  
    col = num.to_s.split("")[1].to_i
    return [row,col]
  else
    col = num.to_s.split("")[0].to_i
    return [0,col]
  end
end
#===========================================
def LargestRowColumn(strArr)
array = []
sums = []
 (0..strArr.length - 1).each do |row|
   (0..strArr[0].length - 1).each do |col|
     array = array + test_case(row,col,strArr.length - 1,strArr[0].length - 1)
   end
 end
 array.each do |arr|
   sum = 0
   arr.each do |a|
     sum += strArr[a[0]][a[1]].to_i
   end
   sums << sum 
 end
 #puts(sums.inspect)
 sums = sums.select do |s|
   split(s)[0] <= (strArr.length) - 1 && split(s)[1] <= (strArr[0].length) - 1
 end
 #puts(sums.inspect)
 sums = sums.sort
 #puts(sums.inspect)
 sums[-1]
         
end
puts LargestRowColumn(["345", "326", "221"]) # 12
puts LargestRowColumn(["234", "999", "999"]) # 22
puts LargestRowColumn(["11111", "22222"]) # 4
puts

puts " ===== 64 Eight Queens ===== " 
#Using the Ruby language, have the function EightQueens(strArr) read strArr which 
#will be an array consisting of the locations of eight Queens on a standard 8x8 
#chess board with no other pieces on the board. The structure of strArr will be 
#the following: ["(x,y)", "(x,y)", ...] where (x,y) represents the position of 
#the current queen on the chessboard (x and y will both range from 1 to 8 where 
#1,1 is the bottom-left of the chessboard and 8,8 is the top-right). Your program 
#should determine if all of the queens are placed in such a way where none of them 
#are attacking each other. If this is true for the given input, return the string 
#true otherwise return the first queen in the list that is attacking another piece
#in the same format it was provided. 

#For example: if strArr is ["(2,1)", "(4,2)", "(6,3)", "(8,4)", "(3,5)", "(1,6)",
#"(7,7)", "(5,8)"] then your program should return the string true. The 
#corresponding chessboard of queens for this input is below (taken from Wikipedia). 
# 01
#puts EightQueens(["(2,1)","(4,2)","(6,3)","(8,4)","(3,5)","(1,6)","(7,7)","(5,8)"])
#puts EightQueens(["(2,1)","(4,3)","(6,3)","(8,4)","(3,4)","(1,6)","(7,7)","(5,8)"]) # 21
#puts EightQueens(["(2,1)","(5,3)","(6,3)","(8,4)","(3,4)","(1,8)","(7,7)","(5,8)"]) # 53
puts

puts " ===== 65 Three Points ===== "
#Using the Ruby language, have the function ThreePoints(strArr) read the array of 
#strings stored in strArr which will always contain 3 elements and be in the form: 
#["(x1,y1)", "(x2,y2)", "(x3,y3)"]. Your goal is to first create a line formed by 
#the first two points (that starts from the first point and moves in the direction 
#of the second point and that stretches in both directions through the two points), 
#and then determine what side of the line point 3 is on. The result will either be 
#right, left, or neither. For example: if strArr is ["(1,1)", "(3,3)", "(2,0)"] 
#then your program should return the string right because the third point lies to 
#the right of the line formed by the first two points. 
# 01
#puts ThreePoints(["(1,1)", "(3,3)", "(2,0)"]) # right
#puts ThreePoints(["(0,0)", "(0,5)", "(0,2)"]) # neither
#puts ThreePoints(["(0,-3)", "(-2,0)", "(0,0)"]) # right
#puts ThreePoints() # left


puts " ======================================== "
puts "                HARD_SETS                 "
puts " ======================================== "
puts
puts " ===== 01 Shortest Path ====="
=begin
Using the Ruby language, have the function ShortestPath(strArr) take strArr 
which will be an array of strings which models a non-looping Graph. The 
structure of the array will be as follows: The first element in the array will 
be the number of nodes N (points) in the array as a string. The next N elements 
will be the nodes which can be anything (A, B, C .. Brick Street, Main 
Street .. etc.). Then after the Nth element, the rest of the elements in the 
array will be the connections between all of the nodes. They will look like 
this: (A-B, B-C .. Brick Street-Main Street .. etc.). Although, there may exist 
no connections at all. 

An example of strArr may be: ["4","A","B","C","D","A-B","B-D","B-C","C-D"]. 
Your program should return the shortest path from the first Node to the last 
Node in the array separated by dashes. So in the example above the output should
be A-B-D. Here is another example with strArr being 
["7","A","B","C","D","E","F","G","A-B","A-E","B-C","C-D","D-F","E-D","F-G"]. 
The output for this array should be A-E-D-F-G. There will only ever be one 
shortest path for the array. If no path between the first and last node exists,
return -1. The array will at minimum have two nodes. Also, the connection A-B 
for example, means that A can get to B and B can get to A. 
=end
def ShortestPath(strArr)
  length = strArr.shift.to_i
  nodes = strArr.slice!(0, length)
  paths = strArr.clone
  
  edges = {}
  nodes.each{ |node| edges[node] = [] }

  paths.each do |path|
    pair = path.split('-')
    from = pair[0]
    to = pair[-1]
    edges[from] << to
    edges[to] << from
  end
  
  queue = []
  seen = Array.new(length, false)
  seen[0] = true
  queue << 0 << nodes[0]
  
  until queue.empty?
    idx = queue.shift
    list = queue.shift
    
    return list if idx == length - 1
    
    for n in edges[nodes[idx]]
      if seen[nodes.index(n)] == false
        seen[nodes.index(n)] = true
        queue << nodes.index(n) << list + "-" + n
      end
    end
  end

  -1
end
puts ShortestPath(["4","A","B","C","D","A-B","B-D","B-C","C-D"]) # [A-B-D]
puts ShortestPath(["7","A","B","C","D","E","F","G","A-B","A-E","B-C","C-D","D-F","E-D","F-G"]) # [A-E-D-F-G]
puts ShortestPath(["5","A","B","C","D","F","A-B","A-C","B-C","C-D","D-F"])#[A-C-D-F]
puts ShortestPath(["4","X","Y","Z","W","X-Y","Y-Z","X-W"]) # [X-W]
puts
puts

puts " ===== 02 Pattern Chaser ====="
=begin
Using the Ruby language, have the function PatternChaser(str) take str which 
will be a string and return the longest pattern within the string. A pattern 
for this challenge will be defined as: if at least 2 or more adjacent characters
within the string repeat at least twice. So for example "aabecaa" contains the 
pattern aa, on the other hand "abbbaac" doesn't contain any pattern. Your 
program should return yes/no pattern/null. So if str were "aabejiabkfabed" the 
output should be yes abe. If str were "123224" the output should return no null.
The string may either contain all characters (a through z only), integers, or 
both. But the parameter will always be a string type. The maximum length for 
the string being passed in will be 20 characters. If a string for example is 
"aa2bbbaacbbb" the pattern is "bbb" and not "aa". You must always return the 
longest pattern possible. 
=end
def PatternChaser(str)
  max_pattern = ""

  i = 0
  i2 = 1
  while i < str.length - i2
    potential_pattern = str[i..i+i2]
    if str.scan(potential_pattern).length > 1 
 		  max_pattern = potential_pattern
 		  i2 += 1
 		  i = 0
    else
		  i += 1	
    end
  end
  
  return "no null" if max_pattern == ""
  "yes " + max_pattern
end
puts PatternChaser("aabejiabkfabed") # yes abe
puts PatternChaser("123224") # no null
puts PatternChaser("aa2bbbaacbbb")
puts PatternChaser("da2kr32a2") # yes a2
puts PatternChaser("sskfssbbb9bbb") # yes bbb
puts
puts

puts " ===== 03 Calculator ====="
=begin
Using the Ruby language, have the function Calculator(str) take the str parameter
being passed and evaluate the mathematical expression within in. For example, 
if str were "2+(3-1)*3" the output should be 8. Another example: if str were 
"(2-0)(6/2)" the output should be 6. There can be parenthesis within the string 
so you must evaluate it properly according to the rules of arithmetic. The 
string will contain the operators: +, -, /, *, (, and ). If you have a string 
like this: #/#*# or #+#(#)/#, then evaluate from left to right. So divide then 
multiply, and for the second one multiply, divide, then add. The evaluations will
be such that there will not be any decimal operations, so you do not need to 
account for rounding and whatnot. 
=end
def Calculator(str)
  str.gsub!(")(", ")*(")
  str.gsub!("8(", "8*(")
  binding.eval str
end
puts Calculator("2+(3-1)*3") # 8
puts Calculator("(2-0)(6/2)") # 6
puts Calculator("6*(4/2)+3*1") # 15
puts Calculator("6/3-1") # 1
puts
puts

puts " ===== 04 Weighted Path ====="
=begin
Using the Ruby language, have the function WeightedPath(strArr) take strArr which 
will be an array of strings which models a non-looping weighted Graph. The 
structure of the array will be as follows: The first element in the array will 
be the number of nodes N (points) in the array as a string. The next N elements 
will be the nodes which can be anything (A, B, C .. Brick Street, Main Street .. etc.).
Then after the Nth element, the rest of the elements in the array will be the 
connections between all of the nodes along with their weights (integers) 
separated by the pipe symbol (|). They will look like this: 
(A|B|3, B|C|12 .. Brick Street|Main Street|14 .. etc.). Although, there may 
exist no connections at all. 

An example of strArr may be: ["4","A","B","C","D","A|B|1","B|D|9","B|C|3","C|D|4"].
Your program should return the shortest path when the weights are added up from 
node to node from the first Node to the last Node in the array separated by 
dashes. So in the example above the output should be A-B-C-D. Here is another 
example with strArr being 
["7","A","B","C","D","E","F","G","A|B|1","A|E|9","B|C|2","C|D|1","D|F|2","E|D|6","F|G|2"]. 
The output for this array should be A-B-C-D-F-G. There will only ever be one 
shortest path for the array. If no path between the first and last node exists, 
return -1. The array will at minimum have two nodes. Also, the connection A-B for
example, means that A can get to B and B can get to A. A path may not go through 
any Node more than once. 
=end
def map(nodes, paths)  
  graph = Hash.new { |hash, key| hash[key] = Hash.new(&hash.default_proc) }
  paths.each do |path|
    from, to, weight = path.split('|')
    graph[from][to] = weight.to_i
    graph[to][from] = weight.to_i
  end
  graph
end
#===============================================================================
def find_routes(graph, start, finish, route=[])
  return find_routes(graph, start, finish, [start]) if route.empty?
  return [route] if route.last == finish

  current = []
  graph[route.last].keys.each do |node|
    unless route.include?(node)
      current += find_routes(graph, start, finish, route + [node])
    end
  end
  current
end
#===============================================================================
def least_weighted(routes, graph)
  weighted = {}
  routes.each{|r| weighted[r.join('-')] = find_weights(r, graph)}
  weighted.key(weighted.values.min)
end
#===============================================================================
def find_weights(route, graph)
  sum = 0
  for i in 1.upto(route.length - 1)
    from = route[i - 1]
    to = route[i]
    sum += graph[from][to]
  end
  sum
end
#===============================================================================
def WeightedPath(strArr)
  length = strArr.shift.to_i
  nodes = strArr.slice!(0, length)
  paths = strArr.clone
  
  graph = map(nodes, paths)
  available_routes = find_routes(graph, nodes.first, nodes.last)
  available_routes.empty? ? -1 : least_weighted(available_routes, graph)
end
puts WeightedPath(["4","A","B","C","D","A|B|1","B|D|9","B|C|3","C|D|4"]) #A-B-C-D
puts WeightedPath(["7","A","B","C","D","E","F","G","A|B|1","A|E|9","B|C|2",
"C|D|1","D|F|2","E|D|6","F|G|2"]) # A-B-C-D-F-G
puts WeightedPath(["4","A","B","C","D", "A|B|2", "C|B|11", "C|D|3", "B|D|2"])
puts WeightedPath(["4","x","y","z","w","x|y|2","y|z|14", "z|y|31"]) # -1
puts
puts

puts " ===== 05 Intersecting Lines ====="
=begin
Using the Ruby language, have the function IntersectingLines(strArr) take strArr
which will be an array of 4 coordinates in the form: (x,y). Your program should 
take these points where the first 2 form a line and the last 2 form a line, and 
determine whether the lines intersect, and if they do, at what point. For 
example: if strArr is ["(3,0)","(1,4)","(0,-3)","(2,3)"], then the line created 
by (3,0) and (1,4) and the line created by (0,-3) (2,3) intersect at (9/5,12/5).
Your output should therefore be the 2 points in fraction form in the following 
format: (9/5,12/5). If there is no denominator for the resulting points, then the
output should just be the integers like so: (12,3). If any of the resulting points
is negative, add the negative sign to the numerator like so: (-491/63,-491/67). 
If there is no intersection, your output should return the string "no intersection".
The input points and the resulting points can be positive or negative integers. 
=end
def find_min_max(pairs)
    (pairs[0][0] < pairs[1][0]) ? [pairs[0], pairs[1]] : [pairs[1], pairs[0]]
end
#===============================================================================
def find_slope(pairs)
  y_diff = pairs[0][1] - pairs[1][1]
  x_diff = pairs[0][0] - pairs[1][0]
  
  if x_diff != 0 && y_diff != 0
    ((y_diff).fdiv(x_diff)).rationalize
  elsif y_diff == 0
    0
  elsif x_diff == 0
    "vertical"
  end
end
#===============================================================================
def find_intercept(coordinate, slope)
    slope == "vertical" ? nil : (coordinate[1].rationalize - (slope * coordinate[0].rationalize)).rationalize
end
#===============================================================================
def IntersectingLines(strArr)
  intersection = "no intersection"
  coord = strArr.map{|pair| pair.scan(/-?\d+/).map(&:to_f)}
  
  first = find_min_max([coord[0], coord[1]])
  slope1 = find_slope(first)
  intercept1 = find_intercept(first[0], slope1)
  
  second = find_min_max([coord[2], coord[3]])
  slope2 = find_slope(second)
  intercept2 = find_intercept(second[0], slope2)
  
  if slope1 != slope2
    if slope1 == "vertical"
      x = first[0][0]
      y = ((slope2.rationalize * x) + intercept2.rationalize)
    elsif slope2 == "vertical"
      x = second[0][0]
      y = ((slope1.rationalize * x) + intercept1.rationalize)
    else
      x = (intercept2 - intercept1).rationalize / (slope1 - slope2).rationalize
      y = ((slope1.rationalize * x) + intercept1.rationalize)
    end
    
    x = x.to_i if x.denominator == 1
    y = y.to_i if y.denominator == 1
    
    intersection = "(#{x},#{y})"
  end 

  intersection
end
puts IntersectingLines(["(3,0)","(1,4)","(0,-3)","(2,3)"]) # (9/5,12/5)
puts IntersectingLines(["(9,-2)","(-2,9)","(3,4)","(10,11)"]) # (3,4)
puts IntersectingLines(["(1,2)","(3,4)","(-5,-6)","(-7,-8)"]) # no intersection
#puts IntersectingLines() #
puts
puts

puts " ===== 06 RREF Matrix ====="
=begin
Using the Ruby language, have the function RREFMatrix(strArr) take strArr which 
will be an array of integers represented as strings. Within the array there will
also be "<>" elements which represent break points. The array will make up a 
matrix where the (number of break points + 1) represents the number of rows. 
Here is an example of how strArr may look: ["5","7","8","<>","1","1","2"]. 
There is one "<>", so 1 + 1 = 2. Therefore there will be two rows in the array 
and the contents will be row1=[5 7 8] and row2=[1 1 2]. Your program should take
the given array of elements, create the proper matrix, and then through the 
process of Gaussian elimination create a reduced row echelon form matrix 
(RREF matrix). For the array above, the resulting RREF matrix would be: 
row1=[1 0 3], row2=[0 1 -1]. Your program should return that resulting RREF 
matrix in string form combining all the integers, like so: "10301-1". The matrix
can have any number of rows and columns (max=6x6 matrix and min=1x1 matrix). 
The matrix will not necessarily be a square matrix. If the matrix is an nx1 
matrix it will not contain the "<>" element. The integers in the array will be 
such that the resulting RREF matrix will not contain any fractional numbers. 
=end
def gaussian_elimination(m, ref="no")
  0.upto(m.size - 1) do |i|
    m = swap(m) if ref == "no"
    j, leading_coefficient = leading(m[i])
    next if leading_coefficient == 0
    
    identity = m[i].map!{|n| (n / leading_coefficient).rationalize}
    (i + 1).upto(m.size - 1) do |i2|
      scalar = -1 * m[i2][j]
      m[i2] = identity.map.with_index{|n, nidx| (n * scalar) + m[i2][nidx] }
    end
  end
  ref == "no" ? m : swap(m).map!{|arr| arr.map(&:to_i)}.flatten.join('')
end
#===============================================================================
def swap(m)
  sorted = false
  until sorted
    sorted = true
    1.upto(m.size - 1) do |i|
      previous, current = leading(m[i- 1]), leading(m[i])
      if (previous[0] > current[0]) || (current[1] == 1 && previous[1] != 1 && previous[0] == current[0])
        (m[i- 1], m[i] = m[i], m[i- 1]) and sorted = false
      end
    end
  end
  m
end
#===============================================================================
def leading(nums)
  zero_count, leading_c = 0, 0
  nums.each{ |n| n.to_i != 0 && leading_c == 0 ? (leading_c = n and break) : zero_count += 1}
  [zero_count, leading_c]
end
#===============================================================================
def RREFMatrix(strArr)
  matrix = strArr.join(',').split("<>").map{|s| s.scan(/\d+/).map(&:to_i)}
  ref = gaussian_elimination(matrix) # Row Echelon Form
  rref = gaussian_elimination(ref.reverse, "yes") # Reduced Row Echelon Form
  rref
end
puts RREFMatrix(["5","7","8","<>","1","1","2"]) # 10301-1
puts RREFMatrix(["2","4","8","<>","6","12","14"]) # "120001"
puts RREFMatrix(["2","2","4","<>","1","1","8","<>","7","6","5"]) # "100010001"
#puts RREFMatrix()
puts
puts

puts " ===== 07 Polynomial Expansion ====="
=begin
Using the Ruby language, have the function PolynomialExpansion(str) take str 
which will be a string representing a polynomial containing only (+/-) integers,
a letter, parenthesis, and the symbol "^", and return it in expanded form. For 
example: if str is "(2x^2+4)(6x^3+3)", then the output should be "12x^5+24x^3+6x^2+12".
Both the input and output should contain no spaces. The input will only contain 
one letter, such as "x", "y", "b", etc. There will only be four parenthesis in 
the input and your output should contain no parenthesis. The output should be 
returned with the highest exponential element first down to the lowest. 

More generally, the form of str will be: 
([+/-]{num}[{letter}[{^}[+/-]{num}]]...[[+/-]{num}]...)(copy) where "[]" 
represents optional features, "{}" represents mandatory features, "num" represents
integers and "letter" represents letters such as "x"
=end
def PolynomialExpansion(str)

  letter = str.scan(/[a-z]/).first
# split each () into array element
  arr = str.scan(/\([^\)]+\)/)
# put 1 in front of x
  arr = arr.map { |exp| exp.gsub(/[\+\-\(][a-z]/) { |m| m.insert(1, "1") } }
# put + sign in front
  arr = arr.map { |exp| exp[1,1].match(/\d/)? exp.insert(1, "+") : exp }
# put x^0 behind each constant
  arr = arr.map do |exp|
    exp.gsub(/[^\^][\+\-\(]\d[^a-z]/) { |m| m.insert(3, "#{letter}^0") }
  end
    
# put ^1 after each x term
  arr = arr.map { |exp| exp.gsub(/[a-z][^\^]/) { |m| m.insert(1, "^1") } }
#split each half into an array of x^n terms
  left = arr[0].scan(/[\+\-]\d[a-z]\^\-?\d\d?/)
  left = left.map { |exp| exp.match(/\^\d/)? exp.insert(4, "+") : exp }

  right = arr[1].scan(/[\+\-]\d[a-z]\^\-?\d\d?/)
  right = right.map { |exp| exp.match(/\^\d/)? exp.insert(4, "+") : exp }
# convert each term (string) into an array of 2 integers, coefficients first
    # and exponents second. this produces an array of arrays
  left = left.map { |exp| [exp[0,2].to_i, exp[4,3].to_i] }
  right = right.map { |exp| [exp[0,2].to_i, exp[4,3].to_i] }
  arr = []
# the actual multiplication is done finally
  left.each { |le| right.each { |re| arr.push([le[0]*re[0], le[1]+re[1]]) } }
  arr.sort! { |x,y| y[1] <=> x[1] }
# combine alike terms
  for i in (0...arr.length)
    break if arr[i+1] == nil
    if arr[i][1] == arr[i+1][1]
      arr[i] = [arr[i][0] + arr[i+1][0], arr[i][1]]
      arr.delete_at(i+1)
    end
  end
#reassemble into a string
  arr = arr.map { |exp| exp.join("#{letter}^") }
  ans = arr.join("+")
#remove the 1x and x^0 and ^1 stuff and excess + signs
  if ans.match(/\+\-/)
    ans.gsub!(/\+\-/, "-")
  elsif ans.match(/x\^0/)
    ans.gsub!(/x\^0/, "")
  elsif ans.match(/\^1[^\d]/)
    ans.gsub!(/\^1/, "")
  elsif ans.match(/1[a-z]/)
    ans.gsub!(/1[a-z]/, letter)
  end

  return ans

end
puts PolynomialExpansion("(2x^2+4)(6x^3+3)") # 12x^5+24x^3+6x^2+12
puts PolynomialExpansion("(1x)(2x^-2+1)") # x+2x^-1
puts PolynomialExpansion("(-1x^3)(3x^3+2)") # -3x^6-2x^3
puts PolynomialExpansion("(3x)(-7x^3+3)") # ????
puts
puts

puts " ===== 08 Gas Station ====="
=begin
Using the Ruby language, have the function GasStation(strArr) take strArr which 
will be an an array consisting of the following elements: N which will be the 
number of gas stations in a circular route and each subsequent element will be 
the string g:c where g is the amount of gas in gallons at that gas station and 
c will be the amount of gallons of gas needed to get to the following gas station. 
For example strArr may be: ["4","3:1","2:2","1:2","0:1"]. Your goal is to return
the index of the starting gas station that will allow you to travel around the 
whole route once, otherwise return the string impossible. For the example above,
there are 4 gas stations, and your program should return the string 1 because 
starting at station 1 you receive 3 gallons of gas and spend 1 getting to the 
next station. Then you have 2 gallons + 2 more at the next station and you spend
2 so you have 2 gallons when you get to the 3rd station. You then have 3 but you 
spend 2 getting to the final station, and at the final station you receive 0 
gallons and you spend your final gallon getting to your starting point. Starting
at any other gas station would make getting around the route impossible, so the 
answer is 1. If there are multiple gas stations that are possible to start at, 
return the smallest index (of the gas station). N will be >= 2. 
=end
def GasStation(strArr)
  rotations = strArr.slice!(0).to_i
  stations = strArr.map!{|station| station.split(':')}
  
  station_index = []
  idx = 0
  while idx < rotations
    start = idx
    tank = 0
    idx2 = 0
    while idx2 < stations.length
      gas = stations[idx2][0].to_i
      spent = stations[idx2][1].to_i
      tank += gas
      tank -= spent
      start = "impossible" if tank < 0
      
      idx2 += 1
    end
    station_index << start
    stations.rotate!
    
    idx += 1
  end
  
  station_index.each{|i| return (i + 1) if i != "impossible"}
  "impossible"
end
puts GasStation(["4","3:1","2:2","1:2","0:1"]) # 1
puts GasStation(["4","1:1","2:2","1:2","0:1"]) # impossible
puts GasStation(["4","0:1","2:2","1:2","3:1"]) # 4
#puts GasStation()
puts
puts

puts " ===== 09 Symmetric Matrix ====="
=begin
Using the Ruby language, have the function SymmetricMatrix(strArr) read strArr 
which will be an array of integers represented as strings. Within the array there
will also be "<>" elements which represent break points. The array will make up 
a matrix where the (number of break points + 1) represents the number of rows. 
Here is an example of how strArr may look: 
["1","0","1","<>","0","1","0","<>","1","0","1"]. There are two "<>", so 2 + 1 = 3. 
Therefore there will be three rows in the array and the contents will be 
row1=[1 0 1], row2=[0 1 0] and row3=[1 0 1]. Your program should take the given 
array of elements, create the proper matrix, and then determine whether the matrix
is symmetric, in other words, if matrix M is equal to M transpose. If it is, 
return the string symmetric and if it isn't return the string not symmetric. A 
matrix may or may not be a square matrix and if this is the case you should return
the string not possible. For the example above, your program should return symmetric. 
=end
def SymmetricMatrix(strArr)
  matrix = strArr.join(' ').split("<>").map{|arr| arr.scan(/-?\d+/)}
  return "not possible" if (matrix.flatten.length.to_f / matrix[0].length) != matrix[0].length
  matrix == matrix.transpose ? "symmetric" : "asymmetric"
end
puts SymmetricMatrix(["1","0","1","<>","0","1","0","<>","1","0","1"]) # symmetric
puts SymmetricMatrix(["1","2","4","<>","2","1","1","<>","-4","1","-1"]) # asymetric
puts SymmetricMatrix(["5","0","<>","0","5"]) # symmetric
#puts SymmetricMatrix()
puts
puts

puts " ===== 10 Switch Sort ====="
=begin
Using the Ruby language, have the function SwitchSort(arr) take arr which will be
an an array consisting of integers 1...size(arr) and determine what the fewest 
number of steps is in order to sort the array from least to greatest using the 
following technique: Each element E in the array can swap places with another 
element that is arr[E] spaces to the left or right the chosen element. You can 
loop from one end of the array to the other. For example: if arr is the array 
[1, 3, 4, 2] then you can choose the second element which is the number 3, and 
if you count 3 places to the left you'll loop around the array and end up at the
number 4. Then you swap these elements and arr is then [1, 4, 3, 2]. From here 
only one more step is required, you choose the last element which is the number 
2, count 2 places to the left and you'll reach the number 4, then you swap these
elements and you end up with a sorted array [1, 2, 3, 4]. Your program should 
return an integer that specifies the least amount of steps needed in order to 
sort the array using the following switch sort technique. 

The array arr will at most contain five elements and will contain at least two 
elements. 
=end
def SwitchSort(arr)
  sorted = arr.sort
  count = 0
  
  until arr == sorted
    arr.each do |num|
      next if num == arr.length || sorted.index(num) == arr.index(num)
      idx = arr.index(num)
      left = arr.index(num) - num
      right = arr.index(num) + num
      right -= arr.length if right > arr.length-1
    
      if sorted[left] == num
        arr[left], arr[idx] = arr[idx], arr[left] 
        count += 1
      elsif sorted[right] == num
        arr[right], arr[idx] = arr[idx], arr[right]
        count += 1
      end
    end
  end
    
  count
end
puts SwitchSort([1, 3, 4, 1, 2])
puts SwitchSort([3,1,2]) # 2
puts SwitchSort([1,3,4,5,2])
puts SwitchSort([3,5,7,8,9])
puts
puts
puts " ===== 11 Matrix Determinant ====="
=begin
Using the Ruby language, have the function MatrixDeterminant(strArr) read strArr
which will be an array of integers represented as strings. Within the array there 
will also be "<>" elements which represent break points. The array will make up 
a matrix where the (number of break points + 1) represents the number of rows. 
Here is an example of how strArr may look: ["1","2","<>","3","4"]. The contents 
of this array are row1=[1 2] and row2=[3 4]. Your program should take the given 
array of elements, create the proper matrix, and then calculate the determinant.
For the example above, your program should return -2. If the matrix is not a 
square matrix, return -1. The maximum size of strArr will be a 6x6 matrix. 
The determinant will always be an integer. 
=end
require 'matrix'
def MatrixDeterminant(strArr)
  nums = strArr.join(",").split("<>").map{|arr| arr.scan(/-?\d+/).map(&:to_i)}
  nums.each{|row| return -1 if row.length != nums.length}
  Matrix.rows(nums).determinant
end
puts MatrixDeterminant(["1","2","<>","3","4"]) # -2
puts MatrixDeterminant(["5","0","<>","0","5"]) # 25
puts MatrixDeterminant(["1","2","4","<>","2","1","1","<>","4","1","1"]) # -4
#puts MatrixDeterminant()
puts
puts

puts " ===== 12 Queen Check ====="
=begin
Using the Ruby language, have the function QueenCheck(strArr) read strArr which 
will be an array consisting of the locations of a Queen and King on a standard 
8x8 chess board with no other pieces on the board. The structure of strArr will 
be the following: ["(x1,y1)","(x2,y2)"] with (x1,y1) representing the position 
of the queen and (x2,y2) representing the location of the king with x and y 
ranging from 1 to 8. Your program should determine if the king is in check based
on the current positions of the pieces, and if so, return the number of spaces 
it can move to in order to get out of check. If the king is not in check, 
return -1. For example: if strArr is ["(4,4)","(6,6)"] then your program should 
output 6. Remember, because only the queen and king are on the board, if the 
queen is checking the king by being directly adjacent to it, technically the 
king can capture the queen. 
=end
def moves_queen(pair)
  result = []
  for i in 1.upto(8)
    x = pair[0]
    y = pair[1]
    result << [i, y] << [x, i] << [(x + i), (y + i)] << [(x - i), (y + i)] << [(x + i), (y - i)] << [(x - i), (y - i)]
  end
  result.keep_if{|c| c[0] > 0 && c[1] > 0 && c[0] <= 8 && c[1] <= 8}.sort.uniq
end
#===============================================================================
def moves_king(pair)
  result = []
  total_x = []
  total_y = []
  diff = -1
  while diff < 2
    x = pair[0] + diff
    y = pair[1] + diff
    total_x << x if x > 0 && x <= 8
    total_y << y if y > 0 && y <= 8
    diff += 1
  end
  total_x.each do |x|
    total_y.each do |y|
      result << [x, y]
    end
  end
  result
end
#===============================================================================
def QueenCheck(strArr)
  result = []
  original_q = strArr[0].scan(/\d/).map(&:to_i)
  original_k = strArr[1].scan(/\d/).map(&:to_i)
  queen = moves_queen(original_q)
  king = moves_king(original_k).each{|move| result << move if !(queen.include?(move)) || move == original_q}

  result = -1 if !queen.include?(original_k)
  result.class == Array ? result.length : result
end
puts QueenCheck(["(4,4)","(6,6)"]) # 6
puts QueenCheck(["(1,1)","(1,4)"]) # 3
puts QueenCheck(["(3,1)","(4,4)"]) # -1
puts
puts

puts " ===== 13 Noughts Determinants ====="
=begin
Using the Ruby language, have the function NoughtsDeterminer(strArr) take the 
strArr parameter being passed which will be an array of size eleven. The array 
will take the shape of a Tic-tac-toe board with spaces strArr[3] and strArr[7] 
being the separators ("<>") between the rows, and the rest of the spaces will 
be either "X", "O", or "-" which signifies an empty space. So for example strArr
may be ["X","O","-","<>","-","O","-","<>","O","X","-"]. This is a Tic-tac-toe 
board with each row separated double arrows ("<>"). Your program should output 
the space in the array by which any player could win by putting down either an 
"X" or "O". In the array above, the output should be 2 because if an "O" is 
placed in strArr[2] then one of the players wins. Each board will only have one 
solution for a win, not multiple wins. You output should never be 3 or 7 because
those are the separator spaces.
=end
def NoughtsDeterminer(strArr)
  possibilities = [[4,5,6], [8,9,10],[0,1,2], [0,4,8], [1,5,9], [2,6,10], [0,5,10], [2,5,8]]
  possibilities.each do |position|
    line = [strArr[position[0]], strArr[position[1]], strArr[position[2]]]
    if (line.count("X") == 2 || line.count("O") == 2) && (line.count("-") == 1)
      line.each{|mark| return position[line.index(mark)] if mark == "-"}
    end
  end
end
puts NoughtsDeterminer(["X","O","-","<>","-","O","-","<>","O","X","-"]) # 2
puts NoughtsDeterminer(["X","-","O","<>","-","-","O","<>","-","-","X"]) # 5
puts NoughtsDeterminer(["X","O","X","<>","-","O","O","<>","X","X","O"]) # 4
puts
puts

puts " ===== 14 Blackjack Highest ====="
=begin
Using the Ruby language, have the function BlackjackHighest(strArr) take the 
strArr parameter being passed which will be an array of numbers and letters 
representing blackjack cards. Numbers in the array will be written out. So for 
example strArr may be ["two","three","ace","king"]. The full list of possibilities
for strArr is: two, three, four, five, six, seven, eight, nine, ten, jack, queen,
king, ace. Your program should output below, above, or blackjack signifying if 
you have blackjack (numbers add up to 21) or not and the highest card in your 
hand in relation to whether or not you have blackjack. If the array contains an 
ace but your hand will go above 21, you must count the ace as a 1. You must always
try and stay below the 21 mark. So using the array mentioned above, the output 
should be below king. The ace is counted as a 1 in this example because if it 
wasn't you would be above the 21 mark. Another example would be if strArr was 
["four","ten","king"], the output here should be above king. If you have a tie 
between a ten and a face card in your hand, return the face card as the 
"highest card". If you have multiple face cards, the order of importance is 
jack, queen, then king.
=end
def BlackjackHighest(strArr)
  dealt_cards = strArr.sort.reverse
  faces = ["ten", "jack", "queen", "king"]
  cards = { "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, 
            "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10}
  sum = 0
  greatest_value = 0
  greatest_card = nil
  
  dealt_cards.each do |card|
      current = cards[card] if cards.include?(card)
      current = 1 if card == "ace" && sum > 10
      current = 11 if card == "ace" && sum <= 10
      sum += current
      
      if current > greatest_value
        greatest_card = card
        greatest_value = current
      elsif faces.include?(card) && current == greatest_value
        greatest_card = card if faces.index(card) > faces.index(greatest_card)
      end
  end
  
  sum < 21 ? result = "below" : result = "above"
  result = "blackjack" if sum == 21

  "#{result} #{greatest_card}"
end
puts BlackjackHighest(["four","ten","king"]) # king
puts BlackjackHighest(["two","three","ace","king"]) #
puts BlackjackHighest(["four","ace","ten"]) # below ten
puts BlackjackHighest(["ace","queen"]) # blackjack ace
puts 
puts

puts " ===== 15 Transitivity Relations ====="
=begin
Using the Ruby language, have the function TransitivityRelations(strArr) read the
strArr parameter being passed which will make up an NxN matrix where the rows are
separated by each pair of parentheses (the matrix will range from 2x2 to 5x5). 
The matrix represents connections between nodes in a graph where each node 
corresponds to the Nth element in the matrix (with 0 being the first node). If a 
connection exists from one node to another, it will be represented by a 1, if not
it will be represented by a 0. For example: suppose strArr were a 3x3 matrix with
input ["(1,1,1)","(1,0,0)","(0,1,0)"], this means that there is a connection from
node 0->0, 0->1, and 0->2. For node 1 the connections are 1->0, and for node 2 
the connections are 2->1. This can be interpreted as a connection existing from 
node X to node Y if there is a 1 in the Xth row and Yth column. Note: a connection
from X->Y does not imply a connection from Y->X. 

What your program should determine is whether or not the matrix, which represents 
connections among the nodes, is transitive. A transitive relation means that if 
the connections 0->1 and 1->2 exist for example, then there must exist the connection
0->2. More generally, if there is a relation xRy and yRz, then xRz should exist 
within the matrix. If a matrix is completely transitive, return the string transitive.
If it isn't, your program should return the connections needed, in the following 
format, in order for the matrix to be transitive: (N1,N2)-(N3,N4)-(...). So for the
example above, your program should return (1,2)-(2,0). You can ignore the reflexive 
property of nodes in your answers. Return the connections needed in lexicographical
order [e.g. (0,1)-(0,4)-(1,4)-(2,3)-(4,1)]
=end
def TransitivityRelations(strArr)
  matrix = strArr.map{|arr| arr.scan(/\d/)}
  road_not_taken = []
  
  matrix.each_with_index do |row, i|
    row.each_with_index do |value, j| 
      if value == "1" && i != j
        for k in 0.upto(matrix.length - 1)
          if matrix[i][k] != "1" && matrix[j][k] == "1" && [i,k,j].uniq.size == 3
            road_not_taken << "(#{i},#{k})"
            matrix[i][k] = "1"
          end
        end
      end
    end
  end
  
  road_not_taken.empty? ? "transitive" : road_not_taken.sort.join('-')
  #Thank you dchernik
end
puts TransitivityRelations(["(1,1,1)","(1,0,0)","(0,1,0)"]) #  (1,2)-(2,0)
puts TransitivityRelations(["(1,1,1)","(0,1,1)","(0,1,1)"]) # transitive
puts TransitivityRelations(["(0,1,0,0)","(0,0,1,0)","(0,0,1,1)","(0,0,0,1)"]) #
#puts TransitivityRelations()
puts 
puts

puts " ===== 16 Alphabet Run Encription ====="
=begin
Using the Ruby language, have the function AlphabetRunEncryption(str) read the 
str parameter being passed which will be an encrypted string and your program 
should output the original decrypted string. The encryption being used is the 
following: For every character i in str up to the second to last character, take
the i and i+1 characters and encode them by writing the letters of the alphabet,
in order, that range in the same direction between those chosen characters. For 
example: if the original string were bo then it would be encoded as cdefghijklmn,
but if the string were boa then bo is encoded as cdefghijklmn and oa is encoded 
as nmlkjihgfedcb with the final encrypted string being cdefghijklmnnmlkjihgfedcb.
So str may be something like the encrypted string just written, and your program
should decrypt it and output the original message. 

The input string will only contains lowercase characters (a...z). There are also
three important rules to this encryption based on specific character sequences. 

1) If the original string contains only one letter between two chosen characters,
such as the string ac then this would be encrypted as bR with R standing for what
direction in the alphabet to go in determining the original characters. The 
encrypted string bR represents ac but the encrypted string bL represents ca 
(R = right, L = left). 

2) If the original string contains zero letters between two chosen characters, 
such as the string ab then this would be encrypted as abS, with S representing 
the fact that no decryption is needed on the two letters preceding S. For example,
if the original string were aba then the encryption would be abSbaS, but be 
careful because decrypting this you get abba, but the actual original string is 
aba. 

3) If the original string contains a repeat of letters, such as the string acc 
then this would be encrypted as bRcN, with N representing the fact that no change
in characters occurred on the character preceding N. The input string will never
only be composed of repeated characters. 
#=end
def AlphabetRunEncryption(str)
# code goes here
  strs = []
  res = []
  pattern = /([a-z]+)(L|R|N|S)/
  pattern = /((\w{2})S)|(\w{1})(L|R|N)/
  pattern = /((\w{1})(L|R|N))|((\w{2})(S))|(\w)/
  matches = str.scan(pattern).map{|x| x.compact}

  tmp = []
  matches.each do |m|
  	if m.size > 2
  		if !tmp.empty?
  			res << tmp.join("")
  			tmp = []
  		end
  		res << m
  	else
  		tmp << m
  	end
  end
  res << tmp.join("")

  words = res

  strs = []
  words.each do |word|
    d_word = decrypt(word)
    d_word.each do |dw|
      if dw.is_a?(String)
        strs << d_word
        break
      else
        strs << dw
      end
    end
  end

  final_res = []
  strs.each_cons(2) do |w|
    if final_res.empty?
      final_res << w[0][0]
      final_res << w[0][1]
    end
    if w[0][1] != w[1][0]
      final_res << w[1][0]
    end
    final_res << w[1][1]
  end

  final_res.join('')
end

def decrypt(arr)
  if arr.is_a?(String)
    chars = []
    arr.each_byte do |c|
      chars << c
    end

    full_res = []

    partial_res = []
    chars.each_cons(2) do |ab|
      a = ab[0]
      b = ab[1]
      if (b - a) == 1 || (a - b) == 1
        partial_res << a.chr if !partial_res.include?(a.chr)
        partial_res << b.chr if !partial_res.include?(b.chr)
      else
        full_res << partial_res if !partial_res.empty?
        partial_res = []
      end
    end
    full_res << partial_res if !partial_res.empty?
    full_res = full_res.inject([]) do |res, e|
      first = e.first[0]
      last  = e.last[0]
      if first < last
        first = first -1
        last = last + 1
      else
        first = first + 1
        last = last - 1
      end
      res << [first.chr,last.chr]
    end
    return full_res
  else
    letter = arr[2]
    s = arr[1]
    if letter == 'S'
      return [s[0,1], s[1,2]]
    elsif letter == 'N'
      return [s,s]
    elsif letter == 'R' || letter == 'L'
      chr = s[0]
      arr = [chr-1, chr+1]
      arr = arr.map{|x| x.chr}
      return (letter == 'R' ? arr : arr.reverse)
    end
  end
end
puts AlphabetRunEncryption("cdefghijklmn") # 
puts AlphabetRunEncryption("nmlkjihgfedcb") #
puts AlphabetRunEncryption("cdefghijklmnnmlkjihgfedcb") #
puts AlphabetRunEncryption("bcdefghijklmnopqrstN") #
puts AlphabetRunEncryption("abSbaSaNbR") #
=end
puts 
puts

puts " ===== 17 Knight Jumps ====="
=begin
Using the Ruby language, have the function KnightJumps(str) read str which will 
be a string consisting of the location of a knight on a standard 8x8 chess board
with no other pieces on the board. The structure of str will be the following: 
"(x y)" which represents the position of the knight with x and y ranging from 1 
to 8. Your program should determine the number of spaces the knight can move to 

from a given location. For example: if str is "(4 5)" then your program should 
output 8 because the knight can move to 8 different spaces from position x=4 and
y=5.
=end
def KnightJumps(str)
  count = 0
  x = str.scan(/\d/)[0].to_i
  y = str.scan(/\d/)[1].to_i
  jumps = [[x- 2, y+ 1], [x- 2, y- 1], [x- 1, y+ 2], [x- 1, y- 2], [x+ 2, y+ 1], [x+ 2, y- 1], [x+ 1, y+ 2], [x+ 1, y- 2]]
  jumps.each{|coord| count += 1 if (coord[0] > 0) && (coord[1] > 0) && (coord[0] < 9) && (coord[1] < 9)}
  
  count
end
puts KnightJumps("(4 5)") # 8
puts KnightJumps("(1 1)") # 2
puts KnightJumps("(2 8)") # 3
#puts KnightJumps()
puts
puts

puts " ===== 18 Line Ordering ====="
=begin
Using the Ruby language, have the function LineOrdering(strArr) read the strArr 
parameter being passed which will represent the relations among people standing
in a line. The structure of the input will be ["A>B","B>C","A<D",etc..]. The 
letters stand for different people and the greater than and less than signs stand
for a person being in front of someone or behind someone. A>B means A is in front
of B and B<C means that B is behind C in line. For example if strArr is: 
["J>B","B<S","D>J"], these are the following ways you can arrange the people in 
line: DSJB, SDJB and DJSB. Your program will determine the number of ways people
can be arranged in line. So for this example your program should return the 
number 3. It also may be the case that the relations produce an impossible line 
ordering, resulting in zero as the answer. 

Only the symbols <, >, and the uppercase letters A...Z will be used. The maximum 
number of relations strArr will contain is ten.
=end
def LineOrdering(strArr)
  possible = 0
  lines = strArr.join('').scan(/\w/).uniq.permutation.to_a
  lines.each{|line| possible += 1 if ordered?(line, strArr)}
  possible
end

def ordered?(line, order)
  ahead = []
  line.each do |letter|
    order.each do |pair|
      more = pair[0] and less = pair[-1] if pair[1] == ">"
      less = pair[0] and more = pair[-1] if pair[1] == "<"
      return false if ahead.include?(less) && letter == more
    end
    ahead << letter
  end
  true
end
puts LineOrdering(["J>B","B<S","D>J"]) # 3
puts LineOrdering(["A>B","A<C","C<Z"]) # 1
puts LineOrdering(["A>B","B<R","R<G"]) # 3
#puts LineOrdering()
puts
puts

puts " ===== 19 Sudoku Quadrant Checker ====="
=begin
Using the Ruby language, have the function SudokuQuadrantChecker(strArr) read the
strArr parameter being passed which will represent a 9x9 Sudoku board of integers
ranging from 1 to 9. The rules of Sudoku are to place each of the 9 integers 
integer in every row and column and not have any integers repeat in the respective
row, column, or 3x3 sub-grid. The input strArr will represent a Sudoku board and
it will be structured in the following format: 
["(N,N,N,N,N,x,x,x,x)","(...)","(...)",...)] where N stands for an integer between
1 and 9 and x will stand for an empty cell. Your program will determine if the 
board is legal; the board also does not necessarily have to be finished. If the 
board is legal, your program should return the string legal but if it isn't legal,
it should return the 3x3 quadrants (separated by commas) where the errors exist.
The 3x3 quadrants are numbered from 1 to 9 starting from top-left going to 
bottom-right. 

For example, if strArr is: ["(1,2,3,4,5,6,7,8,1)","(x,x,x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x,x,x)","(1,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)","
(x,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x,x,x)"] then your program should return 1,3,4 since the errors are 
in quadrants 1, 3 and 4 because of the repeating integer 1. 

Another example, if strArr is: ["(1,2,3,4,5,6,7,8,9)","(x,x,x,x,x,x,x,x,x)","
(6,x,5,x,3,x,x,4,x)","(2,x,1,1,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x,x,9)"] then your program should return 3,4,5,9. 
=end
require 'matrix'
def in_sub?(arr)
  result = []
  c_idx = 0
  while c_idx <= 6
    r_idx = 0
    while r_idx <= 6
      sub_arr = Matrix.rows(arr).minor(r_idx, 3, c_idx, 3).to_a
      result << sub_arr
      r_idx += 3
    end
    c_idx += 3
  end
  repeats = []
  result.map!{|sub_grid| sub_grid.flatten}
  result.each.with_index do |value, i|
    q_num = i + 1
    repeats << q_num if result[i].count(value) > 1 && value != "x"
  end
  repeats
end
#===============================================================================
def in_row?(arr)
  rows = Matrix.rows(arr).to_a
  repeats = []
  rows.each.with_index do |row, i|
    row_num = i + 1
    row.each.with_index do |value, c_i|
      column_num = c_i + 1
      repeats << in_quadrant(row_num, column_num) if row.count(value) > 1 && value != "x"
    end
  end    
  repeats
end
#===============================================================================
def in_column?(arr)
  columns = Matrix.rows(arr).transpose.to_a
  repeats = []
  columns.each.with_index do |col, i|
    col_num = i + 1
    col.each.with_index do |value, r_i|
      row_num = r_i + 1
      repeats << in_quadrant(row_num, col_num) if col.count(value) > 1 && value != "x"
    end
  end    
  repeats
end
#===============================================================================
def in_quadrant(row_idx, col_idx)
  return 1 if (0..3).include?(row_idx)  && (0..3).include?(col_idx)
  return 2 if (0..3).include?(row_idx) && (4..6).include?(col_idx)
  return 3 if (0..3).include?(row_idx) && (7..9).include?(col_idx)
  return 4 if (4..6).include?(row_idx) && (0..3).include?(col_idx)
  return 5 if (4..6).include?(row_idx) && (4..6).include?(col_idx)
  return 6 if (4..6).include?(row_idx) && (7..9).include?(col_idx)
  return 7 if (7..9).include?(row_idx) && (0..3).include?(col_idx)
  return 8 if (7..9).include?(row_idx) && (4..6).include?(col_idx)
  return 9 if (7..9).include?(row_idx) && (7..9).include?(col_idx)
  "error in def in_quadrant"
end
#===============================================================================
def SudokuQuadrantChecker(strArr)
  grid = strArr.map{|arr| arr.scan(/\w/).map{|n| n == "x" ? n : n.to_i}}
  repeats = [in_row?(grid), in_column?(grid), in_sub?(grid)].flatten.uniq.sort
  repeats.empty? ? "legal" : repeats.join(',')
end
puts SudokuQuadrantChecker( ["(1,2,3,4,5,6,7,8,1)","(x,x,x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x,x,x)","(1,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x,x,x)"]) # 1, 3, 4
puts SudokuQuadrantChecker(["(1,2,3,4,5,6,7,8,9)","(x,x,x,x,x,x,x,x,x)",
"(6,x,5,x,3,x,x,4,x)","(2,x,1,1,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)","(x,x,x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x,x,9)"]) # 3, 4, 5, 9
#puts SudokuQuadrantChecker()
#puts SudokuQuadrantChecker()
puts
puts

puts " ===== 20 Quick Knight ====="
=begin
Using the Ruby language, have the function QuickKnight(str) read str which will 
be a string consisting of the location of a knight on a standard 8x8 chess board 
with no other pieces on the board and another space on the chess board. The 
structure of str will be the following: "(x y)(a b)" where (x y) represents the 
position of the knight with x and y ranging from 1 to 8 and (a b) represents some
other space on the chess board with a and b also ranging from 1 to 8. Your program 
should determine the least amount of moves it would take the knight to go from its 
position to position (a b). For example if str is "(2 3)(7 5)" then your program
should output 3 because that is the least amount of moves it would take for the 
knight to get from (2 3) to (7 5) on the chess board. 
=end
def jumps_from(start, finish)
  count = 0
  done = false
  jumps = [[start]]
  until done
    valid_jumps = []
    jumps[count].each do |from|
      x = from[0]
      y = from[1]
      to = [[x- 2, y+ 1], [x- 2, y- 1], [x- 1, y+ 2], [x- 1, y- 2], [x+ 2, y+ 1], [x+ 2, y- 1], [x+ 1, y+ 2], [x+ 1, y- 2]]
      to.each{|t| valid_jumps << t if t[0] > 0 && t[0] < 9 && t[1] > 0 && t[1] < 9 && !valid_jumps.include?(t)}
      done = true if valid_jumps.include?(finish)
    end
    jumps << valid_jumps
    count += 1
  end
  count
end
#===============================================================================
def QuickKnight(str)
  start = str.scan(/\d/)[0..1].map(&:to_i)
  finish = str.scan(/\d/)[2..3].map(&:to_i)
  num = jumps_from(start, finish)
end
puts QuickKnight("(2 3)(7 5)") # 3
puts QuickKnight("(1 1)(8 8)") # 6
puts QuickKnight("(2 2)(3 3)") # 2
puts
puts

puts " ===== 21 Sqaure Figures ====="
=begin
Using the Ruby language, have the function SquareFigures(num) read num which 
will be an integer. Your program should return the smallest integer that when 
squared has a length equal to num. For example: if num is 6 then your program 
should output 317 because 317^2 = 100489 while 316^2 = 99856 which does not have
a length of six. 
=end
def SquareFigures(num)
  idx = 0
  idx += 1 until (idx ** 2).to_s.length == num
  idx
end
puts SquareFigures(6) # 317
puts SquareFigures(2) # 4
puts SquareFigures(1) # 0
#puts SquareFigures(13) #
puts
puts

puts " ===== 22 Connect Four Winner ====="
=begin
Using the Ruby language, have the function ConnectFourWinner(strArr) read the 
strArr parameter being passed which will represent a 6x7 Connect Four board. 
The rules of the game are: two players alternate turns and place a colored disc
down into the grid from the top and the disc falls down the column until it hits
the bottom or until it hits a piece beneath it. The object of the game is to 
connect four of one's own discs of the same color next to each other vertically,
horizontally, or diagonally before your opponent. The input strArr will represent
a Connect Four board and it will be structured in the following format: 
["R/Y","(R,Y,x,x,x,x,x)","(...)","(...)",...)] where R represents the player using
red discs, Y represents the player using yellow discs and x represents an empty 
space on the board. The first element of strArr will be either R or Y and it 
represents whose turn it is. Your program should determine, based on whose turn 
it is, whether a space exists that can give that player a win. If a space does 
exist your program should return the space in the following format: (RxC) where 
R=row and C=column. If no space exists, return the string none. The board will 
always be in a legal setup. 

For example, if strArr is: ["R","(x,x,x,x,x,x,x)","(x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x)","(x,x,x,R,x,x,x)","(x,x,x,R,x,x,x)","(x,x,x,R,Y,Y,Y)"] 
then your program should return (3x4). 

Another example, if strArr is: ["Y","(x,x,x,x,x,x,x)","(x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x)","(x,x,Y,Y,x,x,x)","(x,R,R,Y,Y,x,R)","(x,Y,R,R,R,Y,R)"] 
then your program should return (3x3).
=end
def find_position(board, ftw)
  first = ["x", ftw, ftw, ftw] 
  last = [ftw, ftw, ftw, "x"]
  x = 0
  while x < board.length
    y = 0
    while y < board[x].length
      if (x < board.length) && (y <= (board[x].length - 4))
        row = [board[x][y], board[x][y + 1], board[x][y + 2], board[x][y + 3]] 
        return "(#{(x + 1)}x#{(y + 1)})" if row == first
        return "(#{(x + 1)}x#{(y + 4)})" if row == last
      end
      if (x <= (board.length - 4)) && (y < board[x].length)
        column = [board[x][y], board[x + 1][y], board[x + 2][y], board[x + 3][y]]
        return "(#{(x + 1)}x#{(y + 1)})" if column == first
        return "(#{(x + 4)}x#{(y + 1)})" if column == last 
      end
      if (x <= (board.length - 4)) && (y <= (board[x].length - 4))
        downward = [board[x][y], board[x + 1][y + 1], board[x + 2][y + 2], board[x + 3][y + 3]]
        upward = [board[x + 3][y], board[x + 2][y + 1], board[x + 1][y + 2], board[x][y + 3]]
        return "(#{(x + 4)}x#{(y + 4)})" if downward == last
        return "(#{(x + 1)}x#{(y + 1)})" if downward == first && (board[x + 1][y] != "x")
        return "(#{(x + 1)}x#{(y + 4)})" if upward == last && (board[x + 1][y + 3] != "x")
        return "(#{(x + 4)}x#{(y + 1)})" if upward == first
      end
      y += 1
    end
    x += 1
  end
  "none"
end
#===============================================================================
def ConnectFourWinner(strArr)
    ftw_color = strArr.shift
  board = strArr.map{|row| row.scan(/\w/)}
  ftw = find_position(board, ftw_color)
  ftw
end
puts ConnectFourWinner(["R","(x,x,x,x,x,x,x)","(x,x,x,x,x,x,x)","(x,x,x,x,x,x,x)",
"(x,x,x,R,x,x,x)","(x,x,x,R,x,x,x)","(x,x,x,R,Y,Y,Y)"]) # 3 x 4
puts ConnectFourWinner(["Y","(x,x,x,x,x,x,x)","(x,x,x,x,x,x,x)",
"(x,x,x,x,x,x,x)","(x,x,Y,Y,x,x,x)","(x,R,R,Y,Y,x,R)","(x,Y,R,R,R,Y,R)"]) # 3 x 3
#puts ConnectFourWinner()
#puts ConnectFourWinner()
puts
puts

puts " ===== 23 Array Jumping ====="
=begin
Using the Ruby language, have the function ArrayJumping(arr) take the array of 
numbers stored in arr and first determine the largest element in the array, and 
then determine whether or not you can reach that same element within the array 
by moving left or right continuously according to whatever integer is in the 
current spot. If you can reach the same spot within the array, then your program
should output the least amount of jumps it took. For example: if the input is 
[2, 3, 5, 6, 1] you'll start at the spot where 6 is and if you jump 6 spaces to 
the right while looping around the array you end up at the last element where 
the 1 is. Then from here you jump 1 space to the left and you're back where you 
started, so your program should output 2. If it's impossible to end up back at 
the largest element in the array your program should output -1. The largest 
element in the array will never equal the number of elements in the array. The 
largest element will be unique. 
=end
def least_jumps(arr, start)
  count = 0
  jumps = [[start]]
  done = false
  until done
    next_jumps = []
    jumps[count].each do |idx|
      diff = arr[idx]
      left = idx - diff
      right = idx + diff
      left += arr.length until left >= 0
      right -= arr.length until right < arr.length
      done = true if left == start || right == start
      next_jumps << left << right
    end
    return -1 if next_jumps.uniq.length == 1 && arr[next_jumps.uniq[0]] == arr.length
    jumps << next_jumps
    count += 1
  end
  count
end
#===============================================================================
def ArrayJumping(arr)
  max_idx = arr.index(arr.max)
  least_jumps(arr, max_idx)
end
puts ArrayJumping([2, 3, 5, 6, 1]) # 2
puts ArrayJumping([1,2,3,4,2]) # 3
puts ArrayJumping([1,7,1,1,1,1]) # 2
puts
puts

puts " ===== 24 Matrix Border ====="
=begin
Using the Ruby language, have the function MatrixBorder(strArr) read the strArr 
parameter being passed which will represent an NxN matrix filled with 1's and 0's.
Your program should determine the number of swaps between two rows or two columns 
that must be made to change the matrix such that the border of the matrix contains
all 1's and the inside contains 0's. The format of strArr will be: ["(n,n,n...)",
"(...)",...] where n represents either a 1 or 0. The smallest matrix will be a 3x3 
and the largest will be a 6x6 matrix. 

For example: if strArr is: ["(0,1,1)","(1,1,1)","(1,1,1)"] then you can swap the
first two columns and then swap the first two rows to create a matrix with the 
1's on the border and the 0 on the inside, therefore your program should output 2. 
=end
def arrange(grid)
  count = 0
  for i in 1.upto(grid.length - 1)
    if grid.first.uniq.length != 1 && grid[i].uniq.length == 1
      grid[0], grid[i] = grid[i], grid[0]
      count += i
    elsif grid.last.uniq.length != 1 && grid[i].uniq.length == 1
      grid[-1], grid[i] = grid[i], grid[-1]
      count += (grid.length - 1 - i)
    end
  end
  [count, grid]
end
#===============================================================================
require 'matrix'
def MatrixBorder(strArr)
  sorted_rows = arrange(strArr.map{|sub_arr| sub_arr.scan(/\d/).map(&:to_i)})
  sorted_columns = arrange(Matrix.rows(sorted_rows.pop).transpose.to_a)
  count = sorted_rows.shift + sorted_columns.shift
  count
end
puts MatrixBorder(["(0,1,1)","(1,1,1)","(1,1,1)"]) # 2
puts MatrixBorder(["(0,1,0,1)","(1,1,1,1)","(0,1,0,1)","(1,1,1,1)"]) # 2
#puts MatrixBorder()
#puts MatrixBorder()
puts
puts

puts " ===== 25 Roman Numeral Reduction ====="
=begin
Using the Ruby language, have the function RomanNumeralReduction(str) read str 
which will be a string of roman numerals in decreasing order. The numerals being
used are: I for 1, V for 5, X for 10, L for 50, C for 100, D for 500 and M for 
1000. Your program should return the same number given by str using a smaller 
set of roman numerals. For example: if str is "LLLXXXVVVV" this is 200, so your 
program should return CC because this is the shortest way to write 200 using the
roman numeral system given above. If a string is given in its shortest form, just
return that same string. 
=end
def RomanNumeralReduction(str)
  result = []
  numerals = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  digit = str.chars.map{|s| numerals[s]}.inject(:+)
  numerals.each{|key, value| digit -= value and result << key until digit < value}
  result.join('')
end
puts RomanNumeralReduction("LLLXXXVVVV") # cc
puts RomanNumeralReduction("XXXVVIIIIIIIIII") # L
puts RomanNumeralReduction("DDLL") # MC
puts
puts

puts " ===== 26 Parallel Sums ====="
=begin
Using the Ruby language, have the function ParallelSums(arr) take the array of 
integers stored in arr which will always contain an even amount of integers, and
determine how they can be split into two even sets of integers each so that both
sets add up to the same number. If this is impossible return -1. If it's possible
to split the array into two sets, then return a string representation of the first
set followed by the second set with each integer separated by a comma and both 
sets sorted in ascending order. The set that goes first is the set with the 
smallest first integer. 

For example: if arr is [16, 22, 35, 8, 20, 1, 21, 11], then your program should 
output 1,11,20,35,8,16,21,22 
=end
def ParallelSums(arr)
  result = -1
  possibilities = arr.sort.permutation.to_a
  
  possibilities.each do |pos|
    current = pos
    first = current.slice!(0, (arr.length / 2)).sort
    second = current.slice(0, (arr.length / 2)).sort
    
    result = (first + second).join(",") if first.inject(:+) == second.inject(:+) && first.first <= second.first
    result = (second + first).join(",") if first.inject(:+) == second.inject(:+) && first.first >= second.first
    return result if result != -1
  end
    
  result
end
puts ParallelSums([16, 22, 35, 8, 20, 1, 21, 11]) # 1,11,20,35,8,16,21,22 
puts ParallelSums([1,2,3,4]) # 1,4,2,3
puts ParallelSums([1,2,1,5]) # -1
puts
puts

puts " ===== 27 LCS ====="
=begin
Using the Ruby language, have the function LCS(strArr) take the strArr parameter
being passed which will be an array of two strings containing only the characters
{a,b,c} and have your program return the length of the longest common subsequence
common to both strings. A common subsequence for two strings does not require 
each character to occupy consecutive positions within the original strings. For 
example: if strArr is ["abcabb","bacb"] then your program should return 3 because
one longest common subsequence for these two strings is "bab" and there are also
other 3-length subsequences such as "acb" and "bcb" but 3 is the longest common 
subsequence for these two strings. 
=end
# [A, B, E] == subsequence of [A, B, C, D, E, F, G] after removing [C, D, F, G]
# [A, E, B] != subsequence of [A, B, C, D, E, F, G] after removing [C, D, F, G]
def LCS(strArr)
  first = subsequences(strArr[0])
  second = subsequences(strArr[1])
  common_length_of(first, second)
end

def subsequences(str)
  result = []
  letters = str.chars
  for i in 1.upto(letters.length)
    current = letters.combination(i).map{|c| c.join('')}
    result << current
  end
  result.flatten
end

def common_length_of(arr1, arr2)
  result = []
  arr1.each{|seq1| arr2.each{|seq2| result << seq2 if seq1 == seq2}}
  result.empty? ? 0 : result.last.length
end
puts LCS(["abcabb","bacb"]) # 3
puts LCS(["abc","cb"]) # 1
puts LCS(["bcacb","aacabb"]) # 3
puts
puts

puts " ===== 28 Nim Winner ====="
=begin
Using the Ruby language, have the function NimWinner(arr) take the array of 
integers stored in arr which will represent the amount of coins in each pile. 
For example: [2, 4, 1, 3] means there are 4 piles of coins and there are 2 coins
in the first pile, 4 in the second pile, etc. Nim is played by each player 
removing any number of coins from only one pile, and the winner is the player 
who picks up the last coin. For example: if arr is [1, 2, 3] then for example 
player 1 can remove 2 coins from the last pile which results in [1, 2, 1]. Then 
player 2 can remove 1 coin from the first pile which results in [0, 2, 1], etc. 
The player that has the last possible move taking the last coin(s) from a pile 
wins the game. Your program should output either 1 or 2 which represents which 
player has a guaranteed win with perfect play for the Nim game. 
=end
def NimWinner(arr)
  starting_position = arr.map{|num| ('%05b' % num).chars}.transpose.map{|c| c.map(&:to_i).inject(:+) % 2}
  starting_position.each{|nim_sum| return 1 if nim_sum >= 1}
  2
end
puts NimWinner([1, 2, 3]) # 1 or 2
puts NimWinner([1,2,3]) # 2
puts NimWinner([1,1,1,4,5,4]) # 1
puts
puts

puts " ===== 29 Furthest Nodes ====="
=begin
Using the Ruby language, have the function FarthestNodes(strArr) read strArr 
which will be an array of hyphenated letters representing paths between those 
two nodes. For example: ["a-b","b-c","b-d"] means that there is a path from node
a to b (and b to a), b to c, and b to d. Your program should determine the 
longest path that exists in the graph and return the length of that path. So for
the example above, your program should return 2 because of the paths a-b-c and 
d-b-c. The path a-b-c also means that there is a path c-b-a. No cycles will exist
in the graph and every node will be connected to some other node in the graph. 
=end
def FarthestNodes(strArr)
  nodes = strArr.join.scan(/\w/).uniq
  graph = map(nodes, strArr)
  
  possibile_starts_finishes = nodes.combination(2).to_a
  route_lengths = possibile_starts_finishes.map{|poss| find_route(graph, poss[0], poss[1]).flatten.length - 1}
  
  route_lengths.max
end

def map(nodes, paths)  
  graph = {}
  nodes.each{|node| graph[node] = [] }
  paths.each do |path|
    from, to = path.split('-')
    graph[from] << to
    graph[to] << from 
  end
  graph
end

def find_route(graph, start, finish, route=[])
  return find_route(graph, start, finish, [start]) if route.empty?
  return [route] if route.last == finish

  current = []
  graph[route.last].each do |node|
    unless route.include?(node)
      current += find_route(graph, start, finish, route + [node])
    end
  end
  current
end

puts FarthestNodes(["a-b","b-c","b-d"]) # 2
puts FarthestNodes(["b-e","b-c","c-d","a-b","e-f"]) # 4
puts FarthestNodes(["b-a","c-e","b-c","d-c"]) # 3
puts
puts

puts " ===== 30 Optimal Assignment ====="
=begin
Using the Ruby language, have the function OptimalAssignments(strArr) read strArr
which will represent an NxN matrix and it will be in the following format: 
["(n,n,n...)","(...)",...] where the n's represent integers. This matrix represents
a machine at row i performing task at column j. The cost for this is matrix[i][j].
Your program should determine what machine should perform what task so as to 
minimize the whole cost and it should return the pairings of machines to tasks in
the following format: (i-j)(...)... Only one machine can perform one task. For 
example: if strArr is ["(5,4,2)","(12,4,3)","(3,4,13)"] then your program should
return (1-3)(2-2)(3-1) because assigning the machines to these tasks gives the 
least cost. The matrix will range from 2x2 to 6x6, there will be no negative costs
in the matrix, and there will always be a unique answer. 
=end
def OptimalAssignments(strArr)
  assignments = {}
  matrix = strArr.map{|row| row.scan(/\d+/).map(&:to_i)}
  
  column_idx_combinations = (0..(strArr.length - 1)).to_a.permutation.to_a
  column_idx_combinations.each do |combo|
    costs = []
    tasks = []
    combo.each_with_index do |j, i|
      costs << matrix[i][j]
      tasks << "(#{i+ 1}-#{j+ 1})"
    end
    assignments[costs.inject(:+)] = tasks.join('')
  end
  optimal = assignments[(assignments.keys.min)]
  optimal
end
puts OptimalAssignments(["(5,4,2)","(12,4,3)","(3,4,13)"]) # (1-3)(2-2)(3-1)
puts OptimalAssignments(["(1,2,1)","(4,1,5)","(5,2,1)"]) # (1-1)(2-2)(3-3)
puts OptimalAssignments(["(13,4,7,6)","(1,11,5,4)","(6,7,2,8)","(1,3,5,9)"]) #
puts
puts

puts " ===== 31 Kaprekars Constant ====="
=begin
Using the Ruby language, have the function KaprekarsConstant(num) take the num 
parameter being passed which will be a 4-digit number with at least two distinct 
digits. Your program should perform the following routine on the number: Arrange
the digits in descending order and in ascending order (adding zeroes to fit it 
to a 4-digit number), and subtract the smaller number from the bigger number. 
Then repeat the previous step. Performing this routine will always cause you to 
reach a fixed number: 6174. Then performing the routine on 6174 will always give
you 6174 (7641 - 1467 = 6174). Your program should return the number of times 
this routine must be performed until 6174 is reached. For example: if num is 
3524 your program should return 3 because of the following steps: 
(1) 5432 - 2345 = 3087, (2) 8730 - 0378 = 8352, (3) 8532 - 2358 = 6174. 
=end
def KaprekarsConstant(num)
  count = 0
  until num == 6174
    digits = num.to_s.chars
    digits.unshift('0') until digits.length == 4
    descending = digits.sort.reverse.join('').to_i
    ascending = digits.sort.join('').to_i
    num = descending - ascending
    count += 1
  end
  count
end
puts KaprekarsConstant(3524) # 3
puts KaprekarsConstant(2111) # 5
puts KaprekarsConstant(9831) # 7
puts
puts

puts " ===== 32 Hamiltonian Path ====="
=begin
Using the Ruby language, have the function HamiltonianPath(strArr) take strArr 
which will be an array of length three. The first part of the array will be a 
list of vertices in a graph in the form (A,B,C,...), the second part of the array
will be the edges connecting the vertices in the form (A-B,C-D,...) where each 
edge is bidirectional. The last part of the array will be a set of vertices in 
the form (X,Y,Z,...) and your program will have to determine whether or not the 
set of vertices given forms a Hamiltonian path on the graph which means that every
vertex in the graph is visited only once in the order given.

For example: if strArr is ["(A,B,C,D)","(A-B,A-D,B-D,A-C)","(C,A,D,B)"] then the
vertices (C,A,D,B) in this order do in fact form a Hamiltonian path on the graph
so your program should return the string yes. If for example the last part of the
array was (D,A,B,C) then this doesn't form a Hamiltonian path because once you 
get to B you can't get to C in the graph without passing through the visited 
vertices again. Here your program should return the vertex where the path had to
terminate, in this case your program should return B. 

The graph will have at least 2 vertices and all the vertices in the graph will be
connected. 
=end
def HamiltonianPath(strArr)
  routes, order = strArr[1].scan(/\w+\-\w+/), strArr[2].scan(/\w+/)
  
  1.upto(order.length - 1) do |i|
    current = "#{order[i- 1]}-#{order[i]}"
    return current[0] if !routes.include?(current) && !routes.include?(current.reverse)
  end

  "yes"
end
puts HamiltonianPath(["(A,B,C,D)","(A-B,A-D,B-D,A-C)","(C,A,D,B)"]) # B
puts HamiltonianPath(["(A,B,C)","(B-A,C-B)","(C,B,A)"]) # yes
puts HamiltonianPath(["(X,Y,Z,Q)","(X-Y,Y-Q,Y-Z)","(Z,Y,Q,X)"]) # Q
puts 
puts

puts " ===== 33 Vertex Covering ====="
=begin
Using the Ruby language, have the function VertexCovering(strArr) take strArr 
which will be an array of length three. The first part of the array will be a list
of vertices in a graph in the form (A,B,C,...), the second part of the array will
be the edges connecting the vertices in the form 
(A-B,C-D,...) where each edge is bidirectional. The last part of the array will 
be a set of vertices in the form (X,Y,Z,...) and your program will have to 
determine whether or not the set of vertices given covers every edge in the graph
such that every edge is incident to at least one vertex in the set. For example:
if strArr is ["(A,B,C,D)","(A-B,A-D,B-D,A-C)","(A,B)"] then the vertices (A,B) 
are in fact one of the endpoints of every edge in the graph, so every edge has 
been accounted for. Therefore your program should return the string yes. But, 
if for example the last part of the array was (C,B) then these vertices don't 
cover all the edges because the edge connecting A-D is left out. If this is the 
case your program should return the edges given in the second part of the array 
that are left out in the same order they were listed, so for this example your 
program should return (A-D). 

The graph will have at least 2 vertices and all the vertices in the graph will be
connected. The third part of the array listing the vertices may be empty, where 
it would only contain the parenthesis with no values within it: "()" 

def VertexCovering(a)
  graph, vertices, edges, end_points = Hash.new([]), a[0].scan(/\w/), a[1].scan(/\w\-\w/), a[2].scan(/\w/)
  edges.each{|e| (from, to = e.split('-')) and graph[from] << to and graph[to] << from }
  
  covered = []
  end_points.each do |ep|
    starting_points = vertices - [ep]
    starting_points.each do |sp|  
      if graph[ep].include?(sp)
        edges.each{|original| covered << original if original.split('-').sort == [sp, ep].sort }
      end
    end
  end
  not_covered = edges - covered.uniq
  
  not_covered.empty? ? "yes" : "(#{not_covered.join(',')})"
end
puts VertexCovering(["(A,B,C,D)","(A-B,A-D,B-D,A-C)","(A,B)"]) # (A-D)
puts VertexCovering(["(A,B,C,D)","(A-B,A-D,B-D,A-C)","(C)"]) # (A-B,A-D,B-D)
puts VertexCovering(["(X,Y,Z,Q)","(X-Y,Y-Q,Y-Z)","(Z,Y,Q)"]) # yes
puts
puts
=end
puts " ===== 34 Step Walking ====="
=begin
Using the Ruby language, have the function StepWalking(num) take the num parameter
being passed which will be an integer between 1 and 15 that represents the number
of stairs you will have to climb. You can climb the set of stairs by taking either
1 step or 2 steps, and you can combine these in any order. So for example, to climb
3 steps you can either do: (1 step, 1 step, 1 step) or (2, 1) or (1, 2). So for 3
steps we have 3 different ways to climb them, so your program should return 3. 
Your program should return the number of combinations of climbing num steps. 
=end
def StepWalking(num)
  total = 0
  for n_steps_allowed in 1.upto(num)
    valid_steps = [1, 2].repeated_permutation(n_steps_allowed).to_a.keep_if{|c| c.inject(:+) == num}
    total += valid_steps.count
  end
  total
end
puts StepWalking(1)
puts StepWalking(2)
puts StepWalking(3)
puts StepWalking(5)
puts StepWalking(8)
puts 
puts

puts " ===== 35 Pascals Triangle ====="
=begin
Using the Ruby language, have the function PascalsTriangle(arr) take arr which 
will be a partial row from Pascal's triangle. Pascal's triangle starts with a [1]
at the first row of the triangle. Then the second row is [1,1] and the third row
is [1,2,1]. The next row begins with 1 and ends with 1, and the inside of the row
is determined by adding the k-1 and kth elements from the previous row. The next
row in the triangle would then be [1,3,3,1], and so on. The input, arr will be 
some almost completed row from the triangle, for example [1,4,6,4] and your 
program should return the next element in that row. In this example your program
should return 1. Another example: if arr is [1,5,10] your program should return 10.
If the whole row is entered as input and there is no next number, your program 
should return -1. 

The input array will contain at least 3 elements so [1] and [1,1] will not occur
as inputs. 
=end
def PascalsTriangle(arr)
  result = nil
  row = arr[1] + 1
  p_arr = [[1, 1]]
  idx = 0
  while idx < row - 1
    new_triangle = []
    prev_triangle = p_arr[idx]
    idx2 = 0
    while idx2 <= prev_triangle.length
      if idx2 == 0 || (idx2 == prev_triangle.length - 1)
        digit = prev_triangle[idx2]
      elsif idx2 < prev_triangle.length - 1
        digit = prev_triangle[idx2] + prev_triangle[idx2 - 1]
      end
      new_triangle << digit
      idx2 += 1
    end
    idx += 1
    p_arr << new_triangle
  end

  p_arr.each do |nums|
    comparison = nums.clone[0..(arr.length - 1)] if nums.length >= arr.length
    result = nums[arr.length] if comparison == arr
  end
  
  result = -1 if arr.first == arr.last
  result
end
puts PascalsTriangle([1,4,6,4]) # 1
puts PascalsTriangle([1,5,10]) # 10
puts PascalsTriangle([1,3]) # 3
puts PascalsTriangle([1,5,10,10]) # 5
puts PascalsTriangle([1,4,6,4,1]) # -1
puts
puts

puts " ===== 36 Reverse Polish Notation ====="
=begin
Using the Ruby language, have the function ReversePolishNotation(str) read str 
which will be an arithmetic expression composed of only integers and the operators:
+,-,* and / and the input expression will be in postfix notation (Reverse Polish
notation), an example: (1 + 2) * 3 would be 
1 2 + 3 * in postfix notation. Your program should determine the answer for the 
given postfix expression. For example: if str is 2 12 + 7 / then your program 
should output 2. 
=end
def ReversePolishNotation(str)
  expressions = str.split(" ")
  result = []
  
  expressions.each do |ex|
    result << ex.to_i if !(["+", "-", "*", "/"].include?(ex))
    result << (result.pop + result.pop) if ex == "+"
    result << (-(result.pop) + result.pop) if ex == "-"
    result << (result.pop * result.pop) if ex == "*"
    result << ((1.0 / result.pop) * result.pop) if ex == "/"
  end
    
  result
end
puts ReversePolishNotation("2 12 + 7 /") # 2
puts ReversePolishNotation("1 1 + 1 + 1 +") # 4
puts ReversePolishNotation("4 5 + 2 1 + *") # 27
puts
puts

puts " ===== 37 Max Heap Checker ====="
=begin
Using the Ruby language, have the function MaxHeapChecker(arr) take arr which 
represents a heap data structure and determine whether or not it is a max heap. 
A max heap has the property that all nodes in the heap are either greater than 
or equal to each of its children. For example: if arr is [100,19,36,17] then 
this is a max heap and your program should return the string max. If the input 
is not a max heap then your program should return a list of nodes in string 
format, in the order that they appear in the tree, that currently do not satisfy
the max heap property because the child nodes are larger than their parent. For 
example: if arr is [10,19,52,13,16] then your program should return 19,52. 

Another example: if arr is [10,19,52,104,14] then your program should return 
19,52,104 
=end
def MaxHeapChecker(arr)
  result = []
  top = []
  top << arr.shift
  until arr.empty?
    top.each do |t|
        branch = arr.slice!(0, 2)
        result << branch[0] if branch[0] != nil && branch[0] > t
        result << branch[1] if branch[1] != nil && branch[1] > t
        top = branch
    end
  end
        
  result.empty? ? "max" : result.join(',')
end
puts MaxHeapChecker([10,19,52,13,16]) # 19,52
puts MaxHeapChecker([10,19,52,104,14]) # 19,52,104 
puts MaxHeapChecker([73,74,75,7,2,107]) # 74,75,107
puts MaxHeapChecker([1,5,10,2,3,10,1]) # 5,10
puts
puts

puts " ===== 38 Chessboard Traveling ====="
=begin
Using the Ruby language, have the function ChessboardTraveling(str) read str 
which will be a string consisting of the location of a space on a standard 8x8 
chess board with no pieces on the board along with another space on the chess 
board. The structure of str will be the following: "(x y)(a b)" where (x y) 
represents the position you are currently on with x and y ranging from 1 to 8 
and (a b) represents some other space on the chess board with a and b also 
ranging from 1 to 8 where a > x and b > y. Your program should determine how 
many ways there are of traveling from (x y) on the board to (a b) moving only up
and to the right. For example: if str is (1 1)(2 2) then your program should 
output 2 because there are only two possible ways to travel from space (1 1) on 
a chessboard to space (2 2) while making only moves up and to the right.
=end
def ChessboardTraveling(str)
  coordinates = str.scan(/\d/).map(&:to_i)
  start = [coordinates[0], coordinates[1]]
  finish = [coordinates[2], coordinates[3]]
  
  count = moves(start[0], start[1], finish[0], finish[1])
  count
end

def moves(sx, sy, fx, fy)
  valid = 0
  valid += 1 if sx == fx && sy == fy
  valid += moves(sx+ 1, sy, fx, fy) if sx < fx
  valid += moves(sx, sy+ 1, fx, fy) if sy < fy
  valid
end
puts ChessboardTraveling("(1 1)(2 2)") # 2
puts ChessboardTraveling("(1 1)(3 3)") # 6
puts ChessboardTraveling("(2 2)(4 3)") # 3
puts
puts

puts " ===== 39 Matching Couples ====="
=begin
Using the Ruby language, have the function MatchingCouples(arr) take the arr 
parameter being passed which will be an array of integers in the following format: 
[B, G, N] where B represents the number of boys, G represents the number of girls,
and N represents how many people you want to pair together. Your program should 
return the number of different ways you can match boys with girls given the 
different arguments. For example: if arr is [5, 3, 2], N=2 here so you want to 
pair together 2 people, so you'll need 1 boy and 1 girl. You have 5 ways to 
choose a boy and 3 ways to choose a girl, so your program should return 15. 
Another example: if arr is [10, 5, 4], here N=4 so you need 2 boys and 2 girls. 
We can choose 2 boys from a possible 10, and we can choose 2 girls from a possible 
5. Then we have 2 different ways to pair the chosen boys and girls. Our program 
should therefore return 900 

N will always be an even number and it will never be greater than the maximum of
(B, G). B and G will always be greater than zero. 
=end
def fact(n)
  n == 1 ? n : n * fact(n - 1) 
end 
#===============================================================================
def MatchingCouples(arr)
  b, g, n = arr[0], arr[1], arr[2] / 2
  
  (fact(b)*fact(g)) / (fact(b-n)*fact(g-n)*fact(n))
end
puts MatchingCouples([5, 3, 2]) # 15
puts MatchingCouples([10, 5, 4]) # 900
puts MatchingCouples([5,5,4]) # 200
puts MatchingCouples([2,2,2]) # 4
puts
puts

puts " ===== 40 Approaching Fibonacci ====="
=begin
Using the Ruby language, have the function ApproachingFibonacci(arr) take the arr
parameter being passed which will be an array of integers and determine the 
smallest positive integer (including zero) that can be added to the array to make
the sum of all of the numbers in the array add up to the next closest Fibonacci
number. For example: if arr is [15, 1, 3], then your program should output 2 
because if you add up 15 + 1 + 3 + 2 you get 21 which is the closest Fibonacci 
number. 
=end
def ApproachingFibonacci(arr)
  limit = arr.inject(:+)
  next_fib = fibonacci(limit)
  next_fib - limit
end

def fibonacci(limit)
  return 0 if limit == 0
  nums = [0, 1] and idx = 0
  nums << nums[idx] + nums[idx + 1] and idx += 1 until nums.last >= limit
  nums.last
end
puts ApproachingFibonacci([15, 1, 3]) # 2
puts ApproachingFibonacci([5,2,1]) # 0
puts ApproachingFibonacci([1,20,2,5]) # 6
#puts ApproachingFibonacci()
puts
puts

puts " ===== 41 Simple SAT ====="
=begin
Using the Ruby language, have the function SimpleSAT(str) read str which will be
a string consisting of letters, parenthesis, logical operators and tilde's 
representing a Boolean formula. For example: str may be "(a&b)|c" which means 
(a AND b) OR c. Your program should output the string yes if there is some 
arrangement of replacing the letters with TRUE or FALSE in such a way that the 
formula equates to TRUE. If there is no possible way of assigning TRUE or FALSE 
to the letters, then your program should output the string no. In the example 
above, your program would return yes because a=TRUE, b=TRUE and c=FALSE would 
make the formula TRUE. Another example: if str is "((a&c)&~a)" which means 
((a AND c) AND NOT a) then your program should output no because it is not 
possible to assign TRUE or FALSE values to the letters to produce a TRUE output. 

A Boolean formula will always have at most 5 letters, i.e. a, b, c, d and e. A 
tilde will never appear outside of a parenthesis, i.e. ~(a&b). 
=end
def SimpleSAT(str)
  str.gsub!("~", "!") if str.include?("~")
  replace = {}
  letters = str.scan(/[a-z]/).uniq
  choices = ["true", "false"].repeated_permutation(letters.count).to_a
  
  choices.each do |tf_values|
    tf_values.each_with_index{ |value, i| replace[letters[i]] = value }
    current = str.chars.map{ |char| letters.include?(char) ? replace[char] : char }.join('')
    return "yes" if eval(current)
  end
  "no"
end
puts SimpleSAT("(a&b)|c") # 
puts SimpleSAT("((a&c)&~a)") #
puts SimpleSAT("(a&b&c)|~a") # yes
puts SimpleSAT("a&(b|c)&~b&~c") # no
puts
puts

puts " ===== 42 Array Couples ====="
=begin
Using the Ruby language, have the function ArrayCouples(arr) take the arr parameter
being passed which will be an array of an even number of positive integers, and 
determine if each pair of integers, [k, k+1], [k+2, k+3], etc. in the array has 
a corresponding reversed pair somewhere else in the array. For example: if arr 
is [4, 5, 1, 4, 5, 4, 4, 1] then your program should output the string yes because
the first pair 4, 5 has the reversed pair 5, 4 in the array, and the next 
pair, 1, 4 has the reversed pair 4, 1 in the array as well. But if the array 
doesn't contain all pairs with their reversed pairs, then your program should 
output a string of the integer pairs that are incorrect, in the order that they 
appear in the array. 
For example: if arr is [6, 2, 2, 6, 5, 14, 14, 1] then your program should output
the string 5,14,14,1 with only a comma separating the integer
=end
def ArrayCouples(arr)
  pairs = []
  pairs << arr.slice!(0, 2) until arr.empty?
  
  result = []
  until pairs.empty?
    current = pairs.slice!(0)
    unique = true
    pairs.each do |pair|
      if pair == current.rotate
        pairs.delete(pair) 
        unique = false
      end
    end
    result << current if unique == true
  end
  result.empty? ? "yes" : result.join(',')
end
puts ArrayCouples([4, 5, 1, 4, 5, 4, 4, 1]) # 
puts ArrayCouples([6, 2, 2, 6, 5, 14, 14, 1]) # 
puts ArrayCouples([2,1,1,2,3,3]) # 3,3
puts ArrayCouples([5,4,6,7,7,6,4,5]) # yes
puts
puts

puts " ===== 43 Array Notation ====="
=begin
Using the Ruby language, have the function ArrayRotation(arr) take the arr 
parameter being passed which will be an array of non-negative integers and 
circularly rotate the array starting from the Nth element where N is equal to 
the first integer in the array. For example: if arr is [2, 3, 4, 1, 6, 10] then 
your program should rotate the array starting from the 2nd position because the 
first element in the array is 2. The final array will therefore be 
[4, 1, 6, 10, 2, 3], and your program should return the new array as a string, 
so for this example your program would return 4161023. The first element in the 
array will always be an integer greater than or equal to 0 and less than the size
of the array.
=end
def ArrayRotation(arr)
  arr.rotate(arr.first).join('')
end
puts ArrayRotation([2, 3, 4, 1, 6, 10]) #
puts ArrayRotation([3,2,1,6]) # 6321
puts ArrayRotation([4,3,4,3,1,2]) # 124343
#puts ArrayRotation()
puts
puts

puts " ===== 44 Bracket Combinations ====="
=begin 
Using the Ruby language, have the function BracketCombinations(num) read num 
which will be an integer greater than or equal to zero, and return the number 
of valid combinations that can be formed with num pairs of parentheses. For
example, if the input is 3, then the possible combinations of 3 pairs of 
parenthesis, namely: ()()(), are ()()(), ()(()), (())(), ((())), and (()()). 
There are 5 total combinations when the input is 3, so your program should return 5. 
=end
def BracketCombinations(num, str= '')
  valid = 0
  valid += 1 if str.length == 2 * num
  valid += BracketCombinations(num, str + '(') if str.count('(') < num
  valid += BracketCombinations(num, str + ')') if str.count(')') < str.count('(')
  valid
end
puts BracketCombinations(5)
puts BracketCombinations(3)
puts BracketCombinations(2)
puts
puts

puts " ===== 45 Counting Anagrams ====="
=begin 
Using the Ruby language, have the function CountingAnagrams(str) take the str 
parameter and determine how many anagrams exist in the string. An anagram is a 
new word that is produced from rearranging the characters in a different word, 
for example: cars and arcs are anagrams. Your program should determine how many 
anagrams exist in a given string and return the total number. For example: if str
is "cars are very cool so are arcs and my os" then your program should return 2 
because "cars" and "arcs" form 1 anagram and "so" and "os" form a 2nd anagram. 
The word "are" occurs twice in the string but it isn't an anagram because it is 
the same word just repeated. The string will contain only spaces and lowercase 
letters, no punctuation, numbers, or uppercase letters. 
=end
def CountingAnagrams(str)
  words = str.scan(/\w+/)
  repeats = []
  count = 0
  idx = 0
  while idx < words.length
    word1 = words[idx]
    repeats << word1
    idx2 = idx + 1
    while idx2 < words.length
      word2 = words[idx2]
      if is_anagram?(word1, word2) && !repeats.include?(word2)
        repeats << word2
        count += 1
      end
      idx2 += 1
    end
    idx += 1
  end
  count
end

def is_anagram?(w, w2)
  w.chars.sort == w2.chars.sort
end
puts CountingAnagrams("cars are very cool so are arcs and my os") # 2
puts CountingAnagrams("aa aa odg dog gdo") # 2
puts CountingAnagrams("a c b c run urn urn") # 1
puts 
puts

puts " ===== 46 Maximal Square ====="
=begin 
Using the Ruby language, have the function MaximalSquare(strArr) take the strArr
parameter being passed which will be a 2D matrix of 0 and 1's, and determine the
area of the largest square submatrix that contains all 1's. A square submatrix 
is one of equal width and height, and your program should return the area of the
largest submatrix that contains only 1's. For example: if strArr is 
["10100", "10111", "11111", "10010"] then this looks like the following matrix: 

1 0 1 0 0
1 0 1 1 1
1 1 1 1 1
1 0 0 1 0 

For the input above, you can see the bolded 1's create the largest square 
submatrix of size 2x2, so your program should return the area which is 4. You can
assume the input will not be empty. 
=end
def MaximalSquare(strArr)
  greatest = 1
  length = strArr.length
  until length == 0
    r_idx = 0
    while r_idx + length <= strArr.length
      rows = (r_idx..(r_idx + length - 1)).to_a
      c_idx = 0
      while c_idx + length <= strArr[r_idx].length
        valid, area, square = true, 0, rows.map{|i| strArr[i].slice(c_idx, length).chars }
        square.each{|row| row.uniq.length == 1 && row.uniq.first == "1" ? area += row.length : valid = false }
        
        greatest = area if area > greatest && valid == true
        c_idx += 1
      end
      r_idx += 1
    end
    length -= 1
  end
  greatest
end
puts MaximalSquare(["10100", "10111", "11111", "10010"]) # 4
puts MaximalSquare(["0111", "1111", "1111", "1111"]) # 9
puts MaximalSquare(["0111", "1101", "0111"]) # 1
puts
puts

puts " ===== 47 Maximal Rectangle ====="
=begin 
Using the Ruby language, have the function MaximalRectangle(strArr) take the 
strArr parameter being passed which will be a 2D matrix of 0 and 1's, and 
determine the area of the largest rectangular submatrix that contains all 1's. 
For example: if strArr is ["10100", "10111", "11111", "10010"] then this looks 
like the following matrix: 

1 0 1 0 0
1 0 1 1 1
1 1 1 1 1
1 0 0 1 0 

For the input above, you can see the bolded 1's create the largest rectangular 
submatrix of size 2x3, so your program should return the area which is 6. You 
can assume the input will not be empty. 
=end
def MaximalRectangle(matrix)
  greatest = 1
  length = matrix.length
  until length == 0
    r_idx = 0
    while r_idx + length <= matrix.size
      rows = matrix.slice(r_idx, length)
      width = rows[0].size
      until width == 0
        c_idx = 0
        while width + c_idx <= rows[0].size
          valid = true
          rectangle = rows.map{|row| row.slice(c_idx, width).chars }
          rectangle.each{|row| valid = false if row.include?("0")}
          
          area = length * width
          greatest = area if area > greatest && valid == true
          c_idx += 1
        end
        width -= 1
      end
      r_idx += 1
    end
    length -= 1
  end
  greatest
end
puts MaximalRectangle(["10100", "10111", "11111", "10010"]) # 6
puts MaximalRectangle(["1011", "0011", "0111", "1111"]) # 8
puts MaximalRectangle(["101", "111", "001"]) # 3
puts
puts

puts " ===== 48 Bipartite Matching ====="
=begin 
Using the Ruby language, have the function BipartiteMatching(strArr) read strArr
which will be an array of hyphenated letters representing paths from the first 
node to the second node. For example: ["a->d", "a->e", "b->f", "c->e"] means that
there is a path from node a to d, a to e, b to f, and so on. The graph will be 
bipartite meaning that it is possible to separate the nodes into two disjoint 
sets such that every edge only connects a node from the lefthand side to a node 
on the righthand side. Your program should determine the maximum cardinality 
matching of the bipartite graph, which means finding the largest possible number
of non-adjacent edges that are matching. So for the example above, your program 
should return 3 because it is possible to connect every single node on the left 
to a node on the right. 

The input will only contain lowercase alphabetic characters with a -> between 
them signifying an edge between them going from the left node to the right node.
The input will contain at least 1 edge connecting 2 nodes. 
=end
def BipartiteMatching(strArr)
  greatest = [["one path"]]
  strArr.each do |path|
    queue = [[[path]]]
    until queue.flatten.empty?
      new = []
      queue.pop.each do |route|
        previous_nodes = route.join(',').scan(/\w+/).uniq
        
        strArr.each do |next_path|
          next if previous_nodes.include?(next_path[0]) || previous_nodes.include?(next_path[-1])
          current = route.clone << next_path
          new << current and (greatest = current if current.length > greatest.length)
        end
      end
      queue << new
    end
  end
  greatest.length
end
puts BipartiteMatching(["a->d", "a->e", "b->f", "c->e"]) # 
puts BipartiteMatching(["a->w", "a->x", "b->x", "b->y", "c->x", "c->z", "d->w"]) # 4
puts BipartiteMatching(["a->b", "c->b", "c->d", "e->b"]) # 2
puts 
puts

puts " ===== 49 Pentagonal Number ====="
=begin 
Using the Ruby language, have the function PentagonalNumber(num) read num which 
will be a positive integer and determine how many dots exist in a pentagonal 
shape around a center dot on the Nth iteration. For example, in the image below 
you can see that on the first iteration there is only a single dot, on the second 
iteration there are 6 dots, on the third there are 16 dots, and on the fourth 
there are 31 dots. 

 # missing image

Your program should return the number of dots that exist in the whole pentagon 
on the Nth iteration. 
=end
#puts PentagonalNumber(2) # 6
#puts PentagonalNumber(5) # 51
#puts PentagonalNumber(9) # 
puts
puts

puts " ===== 50 City Traffic ====="
=begin 
Using the Ruby language, have the function CityTraffic(strArr) read strArr which
will be a representation of an undirected graph in a form similar to an adjacency
list. Each element in the input will contain an integer which will represent the
population for that city, and then that will be followed by a comma separated 
list of its neighboring cities and their populations (these will be separated by 
a colon). For example: strArr may be ["1:[5]", "4:[5]", "3:[5]", "5:[1,4,3,2]",
"2:[5,15,7]", "7:[2,8]", "8:[7,38]", "15:[2]", "38:[8]"]. This graph then looks 
like the following picture: 

 

Each node represents the population of that city and each edge represents a road 
to that city. Your goal is to determine the maximum traffic that would occur via 
a single road if everyone decided to go to that city. For example: if every single
person in all the cities decided to go to city 7, then via the upper road the 
number of people coming in would be (8 + 38) = 46. If all the cities beneath 
city 7 decided to go to it via the lower road, the number of people coming in 
would be (2 + 15 + 1 + 3 + 4 + 5) = 30. So the maximum traffic coming into the 
city 7 would be 46 because the maximum value of (30, 46) = 46. 

Your program should determine the maximum traffic for every single city and 
return the answers in a comma separated string in the format: city:max_traffic,
city:max_traffic,... The cities should be outputted in sorted order by the city 
number. For the above example, the output would therefore be: 
1:82,2:53,3:80,4:79,5:70,7:46,8:38,15:68,38:45. The cities will all be unique 
positive integers and there will not be any cycles in the graph. There will always
be at least 2 cities in the graph. 
=end
#puts CityTraffic(["1:[5]","2:[5]","3:[5]","4:[5]","5:[1,2,3,4]"]) # "1:14,2:13,3:12,4:11,5:4"
#puts CityTraffic(["1:[5]","2:[5,18]","3:[5,12]","4:[5]","5:[1,2,3,4]","18:[2]","12:[3]"]) 
#puts CityTraffic()
puts
puts

puts " ===== 51 Convex Hull Points ====="
=begin
Using the Ruby language, have the function ConvexHullPoints(strArr) take strArr 
which will be an array of integer coordinates that exist on a Cartesian plane in
the form: (x,y). Your program should return the minimum number of points that 
are needed to form a convex hull around all the points. For example: if the input
is ["(2,2)", "(3,1)", "(2,6)", "(0,-2)"] then your program should return 3 because
only 3 points are needed to create a convex hull that encloses all the points. 
The input array will always contain at least 3 points. 
=end
#puts ConvexHullPoints(["(2,2)", "(3,1)", "(2,6)", "(0,-2)"]) # 3
#puts ConvexHullPoints(["(2,2)", "(3,1)", "(2,6)", "(0,1)", "(2,3)", "(5,2)"]) # 4
#puts ConvexHullPoints(["(0,1)", "(3,6)", "(2,2)", "(0,7)"]) # 4
puts
puts

