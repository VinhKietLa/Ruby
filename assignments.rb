# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

class CaesarCipher
    def translate(message, shift, result = '')
      message.each_char do |char|
        base = char.ord < 91 ? 65 : 97
        # Modifies Lowercase & Uppercase
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
          rotation = (((char.ord - base) + shift) % 26) + base
          result += rotation.chr
        # Keeps spaces & punctuation
        else
          result += char
        end
      end
      result
    end
  end

#   Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.


  def substrings(word, dictionary)
    counts = Hash.new(0) # Initialize a new hash with default value of 0 for any key
  
    dictionary.each do |substring|
      matches = word.downcase.scan(substring.downcase).length
      counts[substring] += matches if matches > 0
    end
  
    counts
  end


#   Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker(prices)
    best_buy_day = 0
    best_sell_day = 0
    max_profit = 0
  
    prices.each_with_index do |buy_price, buy_day|
      (buy_day...prices.length).each do |sell_day|
        sell_price = prices[sell_day]
        profit = sell_price - buy_price
  
        if profit > max_profit
          best_buy_day = buy_day
          best_sell_day = sell_day
          max_profit = profit
        end
      end
    end
  
    [best_buy_day, best_sell_day]
  end
  


#   Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

  def bubble_sort(array)
    n = array.length
    loop do
      swapped = false
  
      (n-1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
  
      break if not swapped
    end
  
    array
  end
  
  # Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.

  # Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.


  class MyCar
    attr_accessor :color
    attr_reader :year

    def initialize(year, model, color)
      @year = year
      @model = model
      @color = color
      @current_speed = 0
    end
  
    def speed_up(number)
      @current_speed += number
      puts "You push the gas and accelerate #{number} mph."
    end
  
    def brake(number)
      @current_speed -= number
      puts "You push the brake and decelerate #{number} mph."
    end
  
    def current_speed
      puts "You are now going #{@current_speed} mph."
    end
  
    def shut_down
      @current_speed = 0
      puts "Let's park this bad boy!"
    end

    def spray_paint(color)
      self.color = color
      puts "Your new #{color} paint job looks great!"
    end
  end
  
  lumina = MyCar.new(1997, 'chevy lumina', 'white')
  lumina.speed_up(20)
  lumina.current_speed
  lumina.speed_up(20)
  lumina.current_speed
  lumina.brake(20)
  lumina.current_speed
  lumina.brake(20)
  lumina.current_speed
  lumina.shut_down
  lumina.current_speed
  lumina.spray_paint('red')   #=> "Your new red paint job looks great!"
