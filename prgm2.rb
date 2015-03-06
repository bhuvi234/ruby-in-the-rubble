fav_color="blue"
notfav_color="yellow"
puts fav_color==notfav_color

puts"how many participants are there in this workshop?"

participants_count = gets.to_i

if participants_count < 20
	puts"ohh! its too low!"
else
	puts"cool its a good turnout :) "
end