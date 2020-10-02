# use this as foundation for the other classes
class Breakfast
    attr_accessor :food, :calorie, :breakf, :breakc

    def initialize(food, calorie)
        @food = food
        @calorie = calorie
        @breakf = []
        @breakc = [1, 2, 3]
    end

    def food_add
        @breakf << gets.chomp.downcase
    end

    def cal_add
        @breakc << gets.chomp.to_i
    end

    def bruh
        x = @breakc.sum
        puts x
    end

end