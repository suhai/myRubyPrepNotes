#TOWERS OF HANOI
#T(#discs, #rods)  #rods is usually 3
#T(3, 3)  => 3 discs and 3 rods
#T(4, 3)  => 4 discs and 3 rods

#puts 1 + 2
#puts [1,2,3] == [1,2,3]
#puts [1,2,3] == [3,2,1]
#puts "What's your pick?"    
#choice = gets.chomp
#abort("Error message goes here") if choice != "ab"

#Write a Towers of Hanoi game.
#Keep three arrays, which represents the piles of discs.
#Pick a representation of the discs to store in the arrays;
#maybe just a number representing their size.
#In a loop, prompt the user (using gets) and ask what pile to
#select a disc from, and where to put it. After each move,
#check to see if they have succeeded in moving all the discs,
#to the final pile. If so, they win!"

puts " ======================================== "
puts "       MY TOWERS OF HANOI SOLUTION        "
puts " ======================================== "
puts 

solution = [1,2,3]
rod_a = [1,2,3]
rod_b = []
rod_c = []
prompt1 = "Where would you like to pick from?, a, b, or c?"
prompt2 = "Where would you like to place your pick?, a, b, or c?"
#    =============================================================     #
while rod_b != solution and rod_c != solution
    pile_status = "The current situation is rod_a:#{rod_a}, rod_b:#{rod_b}, rod_c:#{rod_c}"
    puts pile_status
    puts prompt1
    
    def picker(rod_a, rod_b, rod_c)
        picked_from = gets.chomp.downcase!
        puts
        
        if picked_from == "a" and !rod_a.empty? 
            picked = rod_a.shift
            puts "You picked 'a' so I'm picking #{picked} from rod_a."
            return picked
        elsif picked_from == "b" and !rod_b.empty? 
            picked = rod_b.shift
            puts "You picked 'b' so I'm picking #{picked} from rod_b."
            return picked
        elsif picked_from == "c" and !rod_c.empty?
            picked = rod_c.shift
            puts "You picked 'c' so I'm picking #{picked} from rod_c."
            return picked
        else
            puts "You need to choose from a non-empty 'a', 'b', or 'c'"
            picker(rod_a, rod_b, rod_c)
        end
    end
    picked = picker(rod_a, rod_b, rod_c)
    
    puts pile_status
    puts prompt2
    
    def placer(rod_a, rod_b, rod_c, picked)
        place_in = gets.chomp.downcase!
        picked = picked.to_i
        puts
        if place_in == "a" and (rod_a.empty? or picked < rod_a[0])
            puts "You chose rod_a and #{picked} has been added to it now"
            rod_a.unshift(picked)
        elsif place_in == "b" and (rod_b.empty? or picked < rod_b[0])
            puts "You chose rod_b and #{picked} has been added to it now"
            rod_b.unshift(picked)
        elsif place_in == "c" and (rod_c.empty? or picked < rod_c[0])
            puts "You chose rod_c and #{picked} has been added to it now"
            rod_c.unshift(picked)
        else
            puts "You need to choose 'a', 'b', or 'c' ... AND ..."
            puts "You can only add to empty rods or to rods with picks larger than #{picked}"
            placer(rod_a, rod_b, rod_c, picked)
        end
    end
    placer(rod_a, rod_b, rod_c, picked)

end
puts "You just solved the Towers of Hanoi! Huraaaay!!!"
puts "FINAL STATUS is rod_a:#{rod_a}, rod_b:#{rod_b}, rod_c:#{rod_c}"
   


=begin

puts " ============================== "
puts "        OTHER SOLUTIONS       "
puts " ============================== "

pile_1 = [1, 2, 3]
pile_2 = []
pile_3 =[]
answer = [1, 2, 3]

 while (pile_3 != answer and pile_2 != answer)
 
    pile_state = "The piles are pile_1: #{pile_1}, pile_2: #{pile_2}, pile_3: #{pile_3}"
    puts pile_state
    puts "Which pile do I get a disk from?"
    # The 'pile_pick' function below will be triggered by 'pick'
        def pile_pick(pile_1, pile_2, pile_3)
            choice = gets.chomp
            if choice == "1" && !pile_1.empty?
                puts
                puts "Picking from pile_1"
                pick = pile_1.shift  
                return pick
            elsif choice == "2" && !pile_2.empty?
                puts
                puts "Picking from pile_2" 
                pick = pile_2.shift
                return pick
            elsif choice == "3" && !pile_3.empty?
                puts
                puts "Picking from pile_3"
                pick = pile_3.shift  
                return pick 
            else
                puts
                puts "Please choose a pile '1', '2' or '3' OR a pile that is NOT empty"
                puts "The piles are pile_1: #{pile_1}, pile_2: #{pile_2}, 
                pile_3: #{pile_3}"
                pile_pick(pile_1, pile_2, pile_3)
            end    
        end
    # This ends the 'pile_pick' code above
    pick = pile_pick(pile_1, pile_2, pile_3)

    puts "You picked up #{pick}"
    puts "Where do you want to put your pick?"

    puts pile_state
    # The 'place_pick' function below will be triggered by 
        def place_pick(pile_1, pile_2, pile_3, pick)
            place = gets.chomp
            pick = pick.to_i
            if place == "1" && (pile_1.empty? || pick < pile_1[0])
                puts
                puts "You chose '1'"
                pile_1.unshift(pick)
            elsif place == "2" && (pile_2.empty? || pick < pile_2[0])
                puts
                puts "You chose '2'"
                pile_2.unshift(pick)
            elsif place == "3" && (pile_3.empty? || pick < pile_3[0])
                puts
                puts "You chose '3'"
                pile_3.unshift(pick)
            else
                puts
                puts "Please choose '1', '2' or '3'"
                puts "You can only put a disc on a pile if it is empty or 
                it will be sitting on top of a smaller disk"
                puts "The piles are pile_1: #{pile_1}, pile_2: #{pile_2}, 
                pile_3: #{pile_3}"
                place_pick(pile_1, pile_2, pile_3, pick)
            end
        end
    # This ends the place_pick code above
    place_pick(pile_1, pile_2, pile_3, pick)
    
 end
 puts "You have solved the puzzle! Huraaay!!!"
 puts "The piles are pile_1: #{pile_1}, pile_2: #{pile_2}, 
 pile_3: #{pile_3} "

=end