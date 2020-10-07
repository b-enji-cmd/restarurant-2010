class Restaurant
    attr_reader :opening_time , :name , :dishes , :military_time
    def initialize (opening_time, name )
        @opening_time = opening_time
        @name = name
        @dishes = []
        @military_time = military_time
       
    end
    def closing_time(closing_hour)
        # add the number of hours sent in the argument 
        #to the `opening_time` 
        #and return the time in 24 hour format
        @military_time =  @opening_time.to_i
        @military_time += closing_hour
        @military_time = "#{@military_time}:00"
        return @military_time
       # @opening_time += closing_hour

    end

    def add_dish(dish)
        @dishes << dish
    end

    def open_for_lunch?
        #A restaurant is open for lunch, 
        #if its opening time is before 12:00

        lunch_timer =  @military_time.to_i
        if lunch_timer >=12
            return true
        end

    end

    def menu_dish_names
        #will return a list of dish names in all caps
        @dishes.each do |dish|
            dish.upcase
        end
    end
end