# use this as foundation for the other classes
class Breakfast
    attr_accessor :food, :calorie, :breakf, :breakc

    def initialize(food, calorie)
        @food = food
        @calorie = calorie
        @breakf = []
        @breakc = []
    end

    def food_add
        @breakf << gets.chomp.downcase
    end

    def cal_add
        @breakc << gets.chomp.to_i
    end
    # a = Breakfast.new("x", "y")
    # a.food_add
    # a.cal_add
    
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

# def add_food(food)
#     test = Breakfast.new(food)
#     @test = << test
# end