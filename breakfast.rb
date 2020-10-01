# use this as foundation for the other classes
class Breakfast
    attr_accessor :food, :calorie, :breakf, :breakc

    def initialize(food, calorie)
        @food = food
        @calorie = calorie
        @breakf = []
        @breakc = []
    end
        
    def food_add(a = nil)
        a = gets.chomp.downcase
        @breakf << a
    end

    def cal_add(b = nil)
        b = gets.chomp.to_i
        @breakc << b
    end
    


    # a = Testr.new("bruh", "abc")
    # a.fml
    # a.fml2
    
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