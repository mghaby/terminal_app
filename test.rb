require "tty-prompt"

prompt = TTY::Prompt.new

# prompt.select("What would you like to do?", %w(Breakfast Lunch Dinner Snacks))

        selection = prompt.select("Testing?", %w(breakfast lunch diner snacks))
            case selection
            when "breakfast"
                puts "1"
            else 
                puts "abc"
            end