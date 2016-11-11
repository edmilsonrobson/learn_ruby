#write your code here

def add(x, y)
	x+y
end

def subtract(x, y)
	x-y
end

def sum(array)
	total = 0
	array.each do |value|
		total += value
	end

	total
end

def multiply(x, y)
	x*y
end

def power(x,y)
	x ** y
end

def factorial(x)
	answer = 1
	if x == 0
		1
	else		
		for i in x.downto(1) do			
			answer *= i
		end		
		answer
	end
end