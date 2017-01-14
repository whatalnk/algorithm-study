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
end

if $0 == __FILE__
  intStack = IntStack.new(10)
  11.times do |i|
    intStack._push(i)
    p intStack.data
  end
end