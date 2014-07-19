require 'benchmark'

def linear_search apples, my_apple
  comparisons = 0
  apples.each do |apple|
    if apple == my_apple
      return true 
    else
      comparisons += 1
    end
    puts "Comparison #{comparisons}, apple of diameter #{apple}"
  end
  return false
end

def binary_search apples, my_apple
  comparisons = 0
  apples.sort!
  lower_bound = 0
  upper_bound = apples.size
  # mid_point = ((lower_bound + upper_bound) / 2).floor

  while lower_bound <= upper_bound
    mid_point = ((lower_bound + upper_bound) / 2).floor
    p apples.slice(lower_bound..upper_bound)
    if my_apple < apples[mid_point]
      upper_bound = mid_point - 1
      comparisons += 1
      puts
    elsif my_apple > apples[mid_point]
      lower_bound = mid_point + 1
      comparisons += 1
      puts
    else
      return true
    end
    puts "Comparison #{comparisons}"
  end
  return false
end
# driver code =================================================================

def spacing
  3.times {puts}
end

apples = [] #my bowl of apples

10.times do 
  apples << rand(1..15) #make an apple with a random diameter
end

spacing

my_apple = rand(10) #set my_apple diameter to compare to

puts "*************************************************************"
puts "my_apple diameter is #{my_apple}"
puts "*************************************************************"

spacing

puts "Doing a Linear Search for my_apple diameter of #{my_apple}"
puts "============================================================="
puts "Apples = #{apples.inspect}"
puts

puts Benchmark.measure { linear_search(apples, my_apple) }

spacing

puts "Doing a Binary Search for my_apple diameter of #{my_apple}"
puts "============================================================="
puts "Apples = #{apples.sort.inspect}"
puts

puts Benchmark.measure { binary_search(apples, my_apple) }
