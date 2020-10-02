require_relative './breakfast.rb'
require "tty-prompt"

prompt = TTY::Prompt.new

# prompt.select("What would you like to do?", %w(Breakfast Lunch Dinner Snacks))

        # selection = prompt.select("Testing?", %w(breakfast lunch diner snacks))
        #     case selection
        #     when "breakfast"
        #         puts "1"
        #     else 
        #         puts "abc"
        #     end


# -------------------------------------- method testing
class Testr
    def initialize(cat, dog)
        @cat = cat
        @dog = dog
        @cats = []
    end
    
    def fml(abc = nil)
        abc = gets
        @cats << abc

    end

    def fml2
        puts @cats
    end

end

# a = Testr.new("b", "abc")
# a.fml
# a.fml2