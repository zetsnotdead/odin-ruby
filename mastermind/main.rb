puts %{*** Hello, welcome to NUMBERWANG ***}

puts %{Do you want to:\nPRESS 1 - Create the secret code\nPRESS 2 - Crack the code generated by NUMBERWANG3000 AI}

input = gets.chomp
until input == "1" || input == "2"
	puts "Incorrect input, try again:"
	input = gets.chomp
end

case input
when "1" then load 'create_the_code.rb' 
when "2" then load 'crack_the_code.rb' 
end

