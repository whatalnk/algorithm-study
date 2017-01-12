def fact1(n)
  v = 1
  (1..n).each do |i|
    v *= i
  end
  return v
end

def fact2(n)
  if (n > 0) then
    return n * fact2(n - 1)
  else
    return 1
  end
end

if $0 == __FILE__
  p fact1(10)

  p fact2(10)
end
