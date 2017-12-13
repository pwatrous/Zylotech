# reading in first integer
num = gets.to_i

# total number of files
files = Array.new()

# contents of files (size is unknown)
contents = Array.new()

# iterate over total files
for i in 0...num

	# the first thing entered is the name of the file, e.g: foo.txt
	file = gets.chomp
	files.push(file)

	# loop infinitely 
	while(true)
		# trim unwanted chars
		sanitized_string = gets.chomp.tr("$", "")
		contents.push(sanitized_string)

		# break condition for loop, 3 consecutive newlines
		if contents[-1] == "" and contents[-2] == "" and contents[-3] == ""
			break
		end
	end

	# clean up array
	contents -= [""]
end


# the output file name
file_one_index = files[0].index(".")
output_file_prefix = files[0][0...file_one_index]
output_file_suffix = files[0][file_one_index...files[0].length]

# create output file name
for i in 1...files.length
	index = files[i].index(".")
	output_file_prefix += files[i].capitalize[0...index]
end

# concatenate together
output_file = output_file_prefix + output_file_suffix

puts output_file
puts contents