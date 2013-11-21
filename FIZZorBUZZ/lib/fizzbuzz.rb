def process(number)
	if is_divisible_by_3?(number)
		'fizz'
	elsif is_divisible_by_5?(number)
		'buzz'
	elsif fizzbuzz(number)
		'fizzbuzz'
	else number
	end
end

def fizzbuzz(number)
	if is_divisible_by_3?(number) && is_divisible_by_5?(number)
	end
end

def is_divisible_by_3?(number)
	if number % 3 == 0
	end
end

def is_divisible_by_5?(number)
	if number % 5 == 0
	end
end


			