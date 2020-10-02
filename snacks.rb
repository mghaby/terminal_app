class Snacks
    attr_accessor :food, :calorie, :snacf, :snacc
    def initialize(food, calorie)
        @food = food
        @calorie = calorie
        @snacf = []
        @snacc = []
    end
    
    def food_add
        @snacf << gets.chomp.downcase
    end
    
    def cal_add
        @snacc << gets.chomp.to_i
    end
end