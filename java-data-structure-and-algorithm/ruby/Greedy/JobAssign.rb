class JobAssign
  # [Job] * [Man]
  @@costTable = [
    [20, 13, 8, 10, 17], 
    [10, 5, 7, 12, 8], 
    [14, 20, 15, 13, 15], 
    [18, 30, 20, 25, 22], 
    [35, 8, 18, 20, 12]
  ]
  def initialize()
    @assign = Array.new(5, -1)
    @min = 100*5*5
  end
  def assignGreedy()
    cost = 0
    5.times do |man|
      p = 0
      min = 100 * 5 * 5
      5.times do |job|
        if (@assign[job] == -1 && min > @@costTable[job][man]) then
          min = @@costTable[job][man]
          p = job
        end
      end
      @assign[p] = man
      cost += min
    end
    @min = cost
    return cost
  end
  def showAnswer()
    puts "欲張り法による組み合わせ: "
    5.times do |i|
      puts "[#{i}][#{@assign[i]}]=#{@@costTable[i][@assign[i]]}"
    end
    puts "= #{@min}"
  end
end
if $0 == __FILE__
  jobAssign = JobAssign.new()
  jobAssign.assignGreedy()
  jobAssign.showAnswer()
end