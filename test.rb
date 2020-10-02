# require_relative './breakfast.rb'
# require "tty-prompt"

# prompt = TTY::Prompt.new

# prompt.select("What would you like to do?", %w(Breakfast Lunch Dinner Snacks))

        # selection = prompt.select("Testing?", %w(breakfast lunch diner snacks))
        #     case selection
        #     when "breakfast"
        #         puts "1"
        #     else 
        #         puts "abc"
        #     end


# -------------------------------------- method testing
# class Testr
#     def initialize(cat, dog)
#         @cat = cat
#         @dog = dog
#         @cats = []
#     end
    
#     def fml(abc = nil)
#         abc = gets
#         @cats << abc

#     end

#     def fml2
#         puts @cats
#     end

# end

# a = Testr.new("b", "abc")
# a.fml
# a.fml2
maintenace = 200
total_sum = 2600
eating = maintenace - total_sum

case eating
when eating > maintenace
    puts "You have overeaten by #{eating} calories"

when eating = maintenace
    puts "You have eaten exactly at maintenace"

else puts ""
    puts "You have overeaten your calories by #{eating}"
end