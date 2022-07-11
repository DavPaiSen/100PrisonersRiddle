def boxGenerator (l)
  bxs = []
  l.times{|x|
    bxs[x] = x
  }
  bxs.shuffle!
  return bxs
end

def onePrisoner(b,p)
  pick = p
  50.times{
    if b[pick] == p
      return true
    end
    pick=b[pick]
  }
  return false
end


#simulations = gets.chomp.to_i
simulations = 1000
totalSuccess = 0
simulations.times{
  boxes = boxGenerator(100)
  success = 0
  100.times{|n|
    if onePrisoner(boxes,n)
      success +=1
    end
  }
  if success == 100
    totalSuccess += 1
  end
}
percentage = (totalSuccess.to_f / simulations.to_f)*100.0
puts "#{percentage.round(2)}% of success."
