class Restaurant
    attr_reader :opening_time , :name , :dishes 
    def initialize (opening_time, name )
        @opening_time = opening_time
        @name = name
        @dishes = []
       
    end
    def closing_time(closing_hour)
        # add the number of hours sent in the argument 
        #to the `opening_time` 
        #and return the time in 24 hour format
        military_time =  @opening_time.to_i
        military_time += closing_hour
        military_time = "#{military_time}:00"
        return military_time
       # @opening_time += closing_hour

    end

    def add_dish(dish)
        @dishes << dish
    end

end