# use this as foundation for the other classes
class Breakfast
    attr_accessor :food, :calorie, :breakf, :breakc

    def initialize(food, calorie)
        @food = food
        @calorie = calorie
        @@breakf = []
        @@breakc = []
    end
    
    def food_add(foods)
    @breakf << foods
    end

    def calorie_add(cals)
    @breakc = cals
    end

    def abc
        puts "What food have you eaten?"
        food = gets.chomp.downcase
        puts "How many calories was the food?"
        calorie = gets.chomp.downcase
        x = self.new(food, calorie)
        x.food_add
        x.calorie_add
        @breakf << @food
        @breakc << @calorie
    end
    
    # def initialize(calorie)
    #     @calorie = calorie
    # end

    # def add_food(food, calorie)
    #     @breakf << @food = food
    # end

    # def add_cal(calorie)
    #     @breakc << @calorie = calorie
    # end

    

end

def nmd
    puts "pass"
end
# def add_food(food)
#     test = Breakfast.new(food)
#     @test = << test
# end