require_relative './breakfast'
require_relative './lunch'
require_relative './dinner'
require_relative './snacks'
require "tty-prompt"
require 'colorize'
require 'colorized_string'
require 'tty-font'
font = TTY::Font.new(:doom)
prompt = TTY::Prompt.new
require 'progress_bar'
bar = ProgressBar.new

class CustomMethod < StandardError
end
# ---------------------------------------------------------------------------------
# Ascii:
puts font.write("HELLO").colorize(:green)
# ------------- Calorie Maintenance thing

puts "This application uses Caloric Maintenance as foundation of how much YOU are eating.".colorize(:blue)
puts ""
puts "If you would like to learn more about Caloric Maintenace click here => https://bit.ly/36cWhZU".colorize(:red)
puts ""
puts "Please click here to calculate your Caloric Maintenace => https://www.calculator.net/calorie-calculator.html and enter your Maintenance value below:".colorize(:green)

# ----------------------------- actual calorie maintenace value
# make error be if maintenace = 0 flag for invalid input coz if not integer itll = 0
begin
maintenace = gets.chomp.to_i
raise CustomMethod,
"An error has occured, input is either 0 or invalid" if maintenace <= 0
rescue
retry
end

# ----------------------------logging loop
a = Breakfast.new("a", "b")
b = Lunch.new("c", "d")
c = Dinner.new("e", "f")
d = Snacks.new("g", "h")

loop do
selection = prompt.select("What would you like to do?", %w(log finish))
    case selection
    when "log"
        selection1 = prompt.select("When did you eat?", %w(breakfast lunch dinner snacks))
        case selection1
        when "breakfast"
        puts "What food did you eat?".colorize(:light_blue)
        a.food_add
        puts "How many calories was this?".colorize(:light_blue)
        a.cal_add

        when "lunch"
        puts "What food did you eat?".colorize(:light_blue)
        b.food_add
        puts "How many calories was this?".colorize(:light_blue)
        b.cal_add
            
        when "dinner"
        puts "What food did you eat?".colorize(:light_blue)
        c.food_add
        puts "How many calories was this?".colorize(:light_blue)
        c.cal_add
            
        when "snacks"
        puts "What food did you eat?".colorize(:light_blue)
        d.food_add
        puts "How many calories was this?".colorize(:light_blue)
        d.cal_add
    end
    when "finish"
        break
    end
end

# ----------------loading bar for the calorie - maintenance feature
loop do
total_sum = a.sum1 + b.sum2 + c.sum3 + d.sum4
over_eat = total_sum - maintenace
under_eat = maintenace - total_sum
puts "Calculating...".colorize(:green)
100.times do
    sleep 0.01
    bar.increment!
  end

# ----------------finish eating loop
if total_sum > maintenace
    puts ""
    puts "You have overeaten by #{over_eat} calories".colorize(:green).on_black.underline
    break
        
elsif total_sum == maintenace
    puts ""
    puts "You have eaten exactly at maintenace".colorize(:green).on_black.underline
    break
    
else total_sum < maintenace 
    puts ""
    puts "You have undereaten your calories by #{under_eat} calories".colorize(:green).on_black.underline
    break
end
end