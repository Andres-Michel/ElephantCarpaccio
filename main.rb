 
class Billing  
 
    
    def initialize(quant, uprice, state)  
        
      @quant = quant  
      @uprice = uprice  
      @state = state 
    end  

    def show
        puts "asd #{@quant+1}"
    end

end  
   
  bill = Billing.new(5, '10', 'AL')  

  bill.show
  