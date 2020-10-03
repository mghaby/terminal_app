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
        # cannot error check this for a 0 input as there are 0 calorie options
        @snacc << gets.chomp.to_i
    end

    def sum4
        h = @snacc.sum
    end
end