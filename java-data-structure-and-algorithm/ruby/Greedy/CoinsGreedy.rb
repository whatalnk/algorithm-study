# p.40, List 2-4
class CoinsGreedy
  @@coins = [500, 100, 50, 10, 5, 1]
  def initialize()
    @nums = Array.new(6, 0)
  end
  def checkCoins(yen)
    i = 0
    total = 0
    while (yen > 0 && i < @@coins.length)
      n = yen / @@coins[i]
      yen = yen % @@coins[i]
      puts "#{@@coins[i]} 円: #{n} 枚"
      i += 1
      total += n
    end
    return total
  end
end

if $0 == __FILE__
  x = 298
  puts "おつり: #{x} 円"
  coinsGreedy = CoinsGreedy.new()
  total = coinsGreedy.checkCoins(x)
  puts "合計: #{total} 枚"
end
