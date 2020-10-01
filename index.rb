class Index
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

# ---------------------breakfast instance variable
def initialize
    @breakf = []
end


# ----------------------------logging loop
# selection = prompt.select("Testing?", %w(breakfast lunch diner snacks))
# case selection
# when "breakfast"
#     puts "1"
# else 
#     puts "abc"
# end

loop do
selection = prompt.select("Testing?", %w(log finish))
    case selection
    when "log"
            selection1 = prompt.select("When did you eat?", %w(breakfast lunch dinner snacks))
            case selection1
            when "breakfast"
            puts "What food did you eat?"
            a = Breakfast.food_add(a)
            puts "How many calories was this?"
            b = Breakfast.cal_add(b)

            when "lunch"
                puts "2"
            
            when "dinner"
                puts "3"
            
            when "snacks"
                puts "4"
    when "finish"
            break
    end
    end
end

# total_sum = @breakc.sum + @lunchc.sum + @dinnerc.sum + @snacksc.sum

# eating = maintenace - total_sum 
# put the finish eating thing here
case eating
    when eating > maintenace
        puts "You have overeaten by #{eating} calories"
    
    when eating = maintenace
        puts "You have eaten exactly at maintenace"

    else puts "You have overeaten your calories by #{eating}"
end
end