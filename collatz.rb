def collatz(n)
  arr = []
  until n == 1 do
    if n % 2 == 0 #even
      n = n / 2
      arr.push(n)
    else #odd
      n = ((3 * n) + 1)
      arr.push(n)
    end
  end
  arr
end

def longest
  max_length = 0
  num = 0
  for x in 1..1000000 do
    len = collatz(x).length
    if len > max_length 
      max_length = len
      num = x
    end
  end
  num
end

puts longest