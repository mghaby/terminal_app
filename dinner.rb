class Dinner
    attr_accessor :food, :calorie, :dinf, :dinc
    def initialize(food, calorie)
        @food = food
        @calorie = calorie
        @dinf = []
        @dinc = []
    end
    
    def food_add
        @dinf << gets.chomp.downcase
    end
    
    def cal_add
        # cannot error check this for a 0 input as there are 0 calorie options
        @dinc << gets.chomp.to_i
    end

    def sum3
        z = @dinc.sum
    end
end