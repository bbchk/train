

res = 2 ** 1000

nums = res.to_s.split("")

p nums

sum = nums.reduce(0) { |acc, numStr| acc += numStr.to_i }

print sum
