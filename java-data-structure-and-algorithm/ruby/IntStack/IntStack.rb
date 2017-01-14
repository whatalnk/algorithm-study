class IntStack
  attr_reader :data
  @@limitSize = 100
  def initialize(size)
    @top = 0
    @max = size
    begin
      @data = Array.new(@max)
    rescue => ex
      puts ex.message
    end
  end

  def _push(x)
    if @top >= @max then
      raise RangeError
    end
    @data[@top] = x
    @top += 1
    return x
  end

  def _pop()
    if @top <= 0 then
      raise RangeError
    end
    @top -= 1
    ret = @data[@top]
    @data[@top] = nil
    return ret
  end
end

if $0 == __FILE__
  intStack = IntStack.new(10)
  p intStack.data
  10.times do |i|
    intStack._push(i)
    p intStack.data
  end
 11.times do
    intStack._pop()
    p intStack.data
  end
end