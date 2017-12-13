# adding functionality to the string class
class String
    def XyloHack(num)
        if (num % 2 == 0)
        	return self.upcase
        else
        	return self.downcase
        end
    end
end

# script that uses XyloHack function
puts "Enter the number of strings to call XyloHack on: "
num = gets.to_i

# create an array of size num
strings = Array.new(num)

# this script assumes that all strings are input in the proper format
puts "Enter the string and method in the proper format"
puts "Example: 'TeST StrINg'.XyloHack(8)"

# iterate from 0 to num, noninclusive
for i in 0...num
	strings[i] = gets.chomp
end

# output result of calling function
for i in 0...num
	puts eval(strings[i])
end