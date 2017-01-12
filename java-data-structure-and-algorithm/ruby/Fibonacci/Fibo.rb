def fib_dp(n)
  fib = Array.new(n+2, 0)
  fib[0] = 1
  fib[1] = 1
  (2..n).each do |i|
    fib[i] = fib[i-2] + fib[i-1]
  end
  return fib[n]
end

if $0 == __FILE__
  p fib_dp(4)
end