#!/usr/bin/env ruby

class Bottles
    attr_accessor :bottles

    def sing_log(starting_bottles = 99, ending_bottles = 0)
      puts sing(starting_bottles, ending_bottles);
    end 

    def sing(starting_bottles = 99, ending_bottles = 0)
      @bottles = starting_bottles
      # loop over bottles
      song = bottle_alert(@bottles)
      while @bottles > ending_bottles
        remove_bottle()
        song = song + "\n" + bottle_alert(@bottles)
      end
      return song
    end

    def bottle_alert(_bottles)
      alert = ''
      if (_bottles > 1)
        alert = "#{_bottles} bottle#{plural(_bottles)} of beer on the wall, #{_bottles} bottle#{plural(_bottles)} of beer.\n"
        alert = alert + "Take one down and pass it around, #{_bottles - 1} bottle#{plural(_bottles -1)} of beer on the wall.\n"
      elsif (_bottles == 1)
        alert = "#{_bottles} bottle#{plural(_bottles)} of beer on the wall, #{_bottles} bottle#{plural(_bottles)} of beer.\n"
        alert = alert + "Take it down and pass it around, no more bottles of beer on the wall.\n"
      else
        alert = "No more bottles of beer on the wall, no more bottles of beer.\n"
        alert = alert + "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      end
      return alert;
    end 

    # kick off bottles
    def remove_bottle
      @bottles = @bottles - 1
    end

    def plural(number) 
      if (number == 1)
        return ''
      else 
        return 's'
      end
    end
end
  
  
  # execution of the code
if __FILE__ == $0
  util = Bottles.new.sing_log()
end