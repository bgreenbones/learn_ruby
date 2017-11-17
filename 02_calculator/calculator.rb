#write your code here
def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	result = 0
	arr.each { |a| result += a }
	return result
end

def multiply(arr)
	result = 1
	arr.each { |a| result *= a }
	return result
end

def power(base, exp)
	i = 0
	result = 1
	until i == exp do
		result *= base
		i += 1
	end

	return result
end

def factorial(a)
	if a == 0
		return 1
	elsif a < 0
		return 0
	else
		return a * factorial(a - 1)
	end
end

