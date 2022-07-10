boxes = []
puts "Number of prisoners:"
prisoners = gets.chomp.to_i
n = 0
boxes = []
prisoners.times{|x|
  boxes[x] = x
}
boxes.shuffle!

individual = 0
success = 0
prisoners.times{
  tries = prisoners/2
  pick = individual
  while tries!=0
    if boxes[pick] == individual
      success += 1
      tries=1
    end
    pick = boxes[pick]
    tries -= 1
  end
  individual += 1
}
puts "Number of succeded attempts: #{success}"
if success == prisoners
  puts "All prisoners escaped."
else
  puts "All prisoners were executed."
end
