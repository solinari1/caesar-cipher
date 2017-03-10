

puts "Tell me a secret."
text = gets.chomp

puts "Input encrypt key"
key = gets.chomp.to_i

letters = text.split('').to_a

key = key.to_i % 26

letters.each do |i|
	i = i.ord

	# check if uppercase
	if (i >= 65) && (i <= 90)
		i = i + key
		if i > 90
			i = i - 26
		end
		print i.chr

	#check if lowercase
	elsif (i >= 97) && (i <= 122)
		i = i + key
		if i > 122
			i = i - 26
		end
		print i.chr

	else
		print i.chr
	end
end

puts "\n\n"