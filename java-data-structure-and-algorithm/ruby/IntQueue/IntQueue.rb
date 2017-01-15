class IntQueue
  attr_reader :data, :count
  @@limitSize = 100
  def initialize(size)
    @top = 0
    @count = 0
    begin
      @data = Array.new(size)
    rescue => ex
      puts ex.message
    end
  end
  def enqueue(x)
    if (@count >= @data.length)
      return false
    end
    @data[(@top + @count) % @data.length] = x
    @count += 1
    return true
  end
  def dequeue()
    if @count == 0 then
      raise RangeError
    end
    x = @data[@top]
    @top += 1
    @count -= 1
    if @top == @data.length then
      @top = 0
    end
    return x
  end
end

if $0 == __FILE__
  intQueue = IntQueue.new(10)
  p intQueue.data
  20.times do |i|
    if intQueue.enqueue(i)
      p intQueue.data
    else
      p "Exceed queue size"
      break
    end
  end
end