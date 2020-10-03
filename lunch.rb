class Lunch
    attr_accessor :food, :calorie, :lunf, :lunc
    def initialize(food, calorie)
        @food = food
        @calorie = calorie
        @lunf = []
        @lunc = []
    end
    
    def food_add
        @lunf << gets.chomp.downcase
    end
    
    def cal_add
        @lunc << gets.chomp.to_i
    end

    def sum2
        y = @lunc.sum
    end

end