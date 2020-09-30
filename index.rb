

loop do
puts "Great, what woud you like to do? 1 = add a food or 2 = finish eating for the day"
option = gets.chomp.to_i

    if option == 1
        puts "What did you eat? breakfast, lunch, dinner or snacks?"
        time = gets.chomp.downcase
            if time == "breakfast"
                puts "What food did you eat?"
                foods = gets.chomp.downcase
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