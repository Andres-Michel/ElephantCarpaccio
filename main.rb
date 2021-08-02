 
class Billing  

    TAXES = {"UT" => "6.85%", "NV" => "8.00%", "TX" => "6.25%", "AL" => "4.00%", "CA" => "8.25%"}
  
    def initialize(quant, uprice, state)  
        
      @quant = quant.to_i 
      @uprice = uprice.to_i 
      @state = state 
    
    end  

    def price

        @quant * @uprice
        
    end


    def taxesC

        string = TAXES[@state]
        taxS = string.sub "%", ""
        tax= taxS.to_f
        
        price = self.price

        res = (price * tax)/100

    end

    def discount 

        case self.price
        when (0..999.99) then
            disc = 0
        when (1000..4999.99) then
            disc = 3     
        when (5000..6999.99) then
            disc = 5
        when (7000..9999.99) then
            disc = 7  
        when (10000..49999.99) then
            disc = 10       
        end

        case
        when self.price >= 50000
            disc = 15
        end

        disc
        
    end


    def total

        self.price + self.taxesC - self.discount

    end

    def show

        puts "#{@quant +1}"

    end

end  

  bill = Billing.new(ARGV[0], ARGV[1], ARGV[2])  
 
  a = bill.total

  puts "Parcial #{a}"

