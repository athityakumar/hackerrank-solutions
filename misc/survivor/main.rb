puts "Enter a limit : "
input , list , kill = gets.chomp.to_i , [] , 1 

for i in (1..input)
  list.push(i)
end

while list.count != 1
  list.delete(list[kill])
  kill = (kill == list.count-1) ? 0 : ((kill == list.count) ? 1 : kill + 1)
end

puts "Survivor : #{list[0]}"
