 
class Billing  

    TAXES = {"UT" => "6.85%", "NV" => "8.00%", "TX" => "6.25%", "AL" => "4.00%", "CA" => "8.25%"}


    
    def initialize(quant, uprice, state)  
        
      @quant = quant  
      @uprice = uprice  
      @state = state 
    end  

    def price

        @quant * @uprice
        #puts "Partial #{@quant * @uprice}"

    end

    def percentcalc(perc)

        res = (self.price * perc)/100

        puts "#{@state} #{res}"

    end

    def discount (tdisc)

        puts "#{tdisc}"

        case tdisc
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
        when tdisc >= 50000
            disc = 15
        end


        puts "#{disc}"

    end


    def total

        puts "#{TAXES[@state]}"

    end



end  


  bill = Billing.new(5, 10, 'AL')  
  bill.percentcalc(4)
  bill.total
  bill.discount(50000)