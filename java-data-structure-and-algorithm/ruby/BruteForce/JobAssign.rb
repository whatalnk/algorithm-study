require "./IntPerm"

class JobAssign < IntPerm
  # [Job] * [Man]
  @@costTable = [
    [20, 13, 8, 10, 17], 
    [10, 5, 7, 12, 8], 
    [14, 20, 15, 13, 15], 
    [18, 30, 20, 25, 22], 
    [35, 8, 18, 20, 12]
  ]
  def initialize(n)
    super(n)
    @assign = Array.new(5)
    @min = 100*5*5
  end
  def _eval()
    cost = 0
    (0...5).each do |i|
      cost += @@costTable[i][@mData[i]-1]
    end
    if (cost < @min) then
      (0...5).each do |i|
        @assign[i] = @mData[i]
      end
      @min = cost
      puts @min
    end
  end
  def showAnswer()
    print "最小の組み合わせ: "
    (0...5).each do |i|
      print "#{@assign[i]}(#{@@costTable[i][@assign[i] - 1]}) "
    end
    puts "= #{@min}"
  end
end
if $0 == __FILE__
  jobAssign = JobAssign.new(5)
  jobAssign.perm()
  jobAssign.showAnswer()
end