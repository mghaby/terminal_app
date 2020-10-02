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
        @dinc << gets.chomp.to_i
    end
end