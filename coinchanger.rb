def coin_changer(cents_received)
	coins = {}
	if cents_received == 0
		coins = {}
	elsif 
		cents_received.between?(0, 4)
		coins[:penny] = cents_received
	elsif 
		cents_received == 5
		coins[:nickel] = 1
	elsif 
		cents_received.between?(6, 9)
		coins[:nickel] = 1
		coins[:penny] = cents_received - 5
	elsif 
		cents_received == 10
		coins[:dime] = 1
	elsif 
		cents_received == 25
		coins[:quarter] = 1
	elsif 
		cents_received.between?(25, 29)
		coins[:quarter] = 1
		coins[:penny] = cents_received - 25
	elsif 
		cents_received.between?(35, 39)
		coins[:quarter] = 1
		coins[:dime] = 1
		coins[:penny] = cents_received - 35
	elsif 
		cents_received == 40
		coins[:quarter] = 1
		coins[:dime] = 1
		coins[:nickel] = 1
	elsif 
		cents_received == 50
		coins[:quarter] = 2
		end
	coins
end