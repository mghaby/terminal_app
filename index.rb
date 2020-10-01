require_relative './breakfast'
require_relative './lunch'
require_relative './dinner'
require_relative './snacks'
require "tty-prompt"

prompt = TTY::Prompt.new
# ---------------------------------------------------------------------------------
# Ascii:
puts "
_______  __________       _         _______ 
|\     /|(  ____ \ ( \\     ( \\       (  ___  )
| )   ( || (   \ /| (     | (       | (   ) |
| (___) || (__   | |     | |       | |   | |
|  ___  ||  __)  | |     | |       | |   | |
| (   ) || (     | |     | |       | |   | |
| )   ( || (____/\| (____/\| (____/\\ | (___) |
|/     \|(_______/(_______/(_______/(_______) "
# ------------- Calorie Maintenance thing

puts ""
puts "This application uses Caloric Maintenance as foundation of how much YOU are eating."
puts ""
puts "If you would like to learn more about Caloric Maintenace click here => https://bit.ly/36cWhZU"
puts ""
puts "Please click here to calculate your Caloric Maintenace => https://www.calculator.net/calorie-calculator.html and enter your Maintenance value below:"

# ----------------------------- actual calorie maintenace value
# make sure to error check this, so that if someone puts something other than an integer it gets custom error
maintenace = gets.chomp.to_i

# ----------------------------logging loop

loop do
option = %w(Log Finish)
prompt.multi_select("What would you like to do?", option)

    if option == 1
        time = %w(Breakfast Lunch Dinner Snacks)
        prompt.multi_select("When did you eat?", time)
            if time == "breakfast"
                Breakfast.bruh
                puts "How many calories was this?"
                cals = gets.chomp.to_i
                Breakfast.food_add(foods)
                Breakfast.calorie_add(cals)

                elsif time == "lunch"
                puts "What food did you eat?"
                foods = gets.chomp.downcase
                puts "How many calories was this?"
                cals = gets.chomp.to_i
                Lunch.food_add(foods)
                Lunch.calorie_add(cals)

                elsif time == "dinner"
                puts "What food did you eat?"
                foods = gets.chomp.downcase
                puts "How many calories was this?"
                cals = gets.chomp.to_i
                Dinner.food_add(foods)
                Dinner.calorie_add(cals)

                elsif time == "snacks"
                puts "What food did you eat?"
                foods = gets.chomp.downcase
                puts "How many calories was this?"
                cals = gets.chomp.to_i
                Snacks.food_add(foods)
                Snacks.calorie_add(cals)
            end
    else break
    end
end

# total_sum = @breakc.sum + @lunchc.sum + @dinnerc.sum + @snacksc.sum

eating = maintenace - total_sum 
# put the finish eating thing here
case eating
    when eating > maintenace
        puts "You have overeaten by #{eating} calories"
    
    when eating = maintenace
        puts "You have eaten exactly at maintenace"

    else puts "You have overeaten your calories by #{eating}"
end