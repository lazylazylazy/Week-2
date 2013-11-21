#Mortgage Calculator 
#---------------------

def provide_mortgage?(salary, deposit, property_value)
	#property_value = 0
	loan_amount = property_value - deposit
	min_deposit = minimum_deposit(property_value)
	max_multiplier = 5
	deposit >= property_value * min_deposit && 
	 salary * max_multiplier >= loan_amount	
end		

def minimum_deposit(p_value)
	min_deposit = 0
	if p_value >= 650000 
		p_value * 0.05 #min deposit for property less than 650000 = 5%
	else
		p_value * 0.2 #min deposit of property more than 65000 = 20%
	end
end

def seventy_five(d_value)
	d_value = 0

	if d_value >= p_value * 0.75
		p "Take our money! Buy a big house."
	end
end

#define a print method for everything



# if deposit is 75% of property_value waive loan amount
# if salary == 0 return false always

puts provide_mortgage?(35000, 60000, 30000)
puts seventy_five(d_value)

#case statement 
#yes you can buy a house
# no you cannot buy a house