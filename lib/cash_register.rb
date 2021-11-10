require 'pry'
class CashRegister
  attr_accessor :discount, :recent, :last_transaction
    def initialize(discount=0)
      # puts discount
      @total = 0
      @discount = discount
      @items = []
      @recent = recent
      
    end 
    def total
      @total
    end 
  
    def total=(value)
      @total = value
    end 
    
    def discount(value=20)
      @discount = value
    end

    def add_item(title, price, quantity=1)
      # puts title, price, quantity
      
      

      price = price
      @total += price*quantity
      self.items(title, price, quantity)
      @recent = price
      # puts self.items

    end 
    

    def apply_discount(value=20)
      # puts value
      if @discount != 0
        initial = @total.to_f
        # puts initial
        value.to_f * 0.01
        # puts value.to_f * 0.01
        # puts initial*value.to_f*0.01
        discount = 1-value.to_f * 0.01
        # puts initial*discount
        @total=initial*discount
        return "After the discount, the total comes to $#{@total.to_i}."
      else
        return "There is no discount to apply."
      end 
      # return newtotal
      # newvalue = value*0.01
      # newdiscount = 1 - newvalue
      # @total * newdiscount
    end

    def items(arg1="eggs", arg2="tomato", *arg3)
      puts arg1, arg2, arg3
      # binding.pry
      
      array = Array.new
      # array[3]
      # if arg3?
      #   for (var i = 0; i<arg3; i++)
      #     array.push(arg1)
      # else
      #   array.push(arg1)
      # puts array
      # newarg
      i = 0
      newarg = 1
      

    #   if arg3
    #     newarg = arg3
    #     puts newarg, "ARG3"
    #     while i < newarg[0] do
    #     # #   puts("Inside the loop i = #" )
    #     array.push(arg1, arg2, *arg3)
    #     # puts arg3[i]
    #       i += 1
    #     end
    #     # end
    #  end
      
      puts arg1, arg2, "HITTING HERE"
    #   while $i < $num  do
    #     puts("Inside the loop i = #$i" )
    #     $i +=1
    #  end
      # binding.pry
      
      array.push(arg1, arg2, *arg3)
      return array
    end

    def void_last_transaction()
      
      # puts @recent, "RECENT"
      result= @total - @last_transaction
      @total = @total - @recent
      if self.items
        puts self.items, "TESTING"
      # end
      else 
        @total = 0.0
      end
      puts result, "RESULTT"
      puts result.to_f
      return result
    end
end


  
