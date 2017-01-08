class IntPerm
  def initialize(n)
    @mData = (1..n).to_a
  end
  def perm()
    _perm(0)
  end
  def _perm(i)
    if (i == @mData.length) then
      eval_perm()
    else
      (i...(@mData.length)).each do |j|
        @mData[i], @mData[j] = @mData[j], @mData[i]
        _perm(i + 1)
        @mData[i], @mData[j] = @mData[j], @mData[i]
      end
    end
  end
  def eval_perm()
    ret = []
    (0...(@mData.length)).each do |i|
      ret << @mData[i]
    end
    puts ret.join(" ")
  end
end

if $0 == __FILE__
  n = gets.chomp.to_i
  intPerm = IntPerm.new(n)
  intPerm.perm
end