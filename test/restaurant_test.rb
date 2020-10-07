require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'
require 'pry'

class RestaurantTest < Minitest::Test
  # Iteration 1 Tests:
  def test_it_exists
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_instance_of Restaurant, restaurant
    #TEST PASSED
  end

  def test_it_has_opening_time
    
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal '10:00', restaurant.opening_time
    #TEST PASSED
  end

  def test_it_has_name
    
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal 'Fuel Cafe', restaurant.name
    #TEST PASSED
  end

  def test_it_has_dishes
    
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal [], restaurant.dishes
    #TEST PASSED
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time
    
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')

    assert_equal '18:00', restaurant1.closing_time(8)
    assert_equal '23:00', restaurant2.closing_time(7)
    #TEST PASSED
  end

  def test_it_can_add_dishes
    
    restaurant = Restaurant.new('16:00', 'Il Poggio')

    restaurant.add_dish('Burrata')
    restaurant.add_dish('Pizzetta')
    restaurant.add_dish('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], restaurant.dishes
    #TEST PASSED
  end
  #BEGIN ITERATION 3

  def test_it_is_open_for_lunch
    restaurant = Restaurant.new('16:00', 'Il Poggio')
    restaurant.closing_time(8)
    

    assert_equal true, restaurant.open_for_lunch?
    #TEST PASSED
  end

  def test_it_has_uppercase_menu_dishes
    restaurant = Restaurant.new('16:00', 'Il Poggio')
    restaurant.closing_time(8)
    restaurant.add_dish('Burrata')
    restaurant.add_dish('Pizzetta')
    restaurant.add_dish('Ravioli')

    actual = ["BURRATA", "PIZZETTA", "RAVIOLI"]


    assert_equal actual, restaurant.menu_dish_names
    #TEST PASSED
  end

  #BEGIN ITERATION 4

  def test_it_has_standard_closing_time
    restaurant1 = Restaurant.new('6:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Posto')
    
    
   

    assert_equal "Fuel Cafe will be closing at 11:00AM" , restaurant1.announce_closing_time(5)
    assert_equal "Il Posto will be closing at 11:00PM" , restaurant2.announce_closing_time(7)
    #TEST PASSED
  end
end
