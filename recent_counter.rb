# https://leetcode.com/problems/number-of-recent-calls/description/

class RecentCounter
  def initialize()
     @queue = []
     @arr = []
  end

  def ping(t)
      @queue.push(t)

      @queue.shift while @queue.first < t - 3000
      @arr.push(@queue.length)
      @arr
  end
end

# recent_counter = RecentCounter.new

# recent_counter.ping(1);      requests = [1], range is [-2999, 1], return 1
# recent_counter.ping(100);    requests = [1, 100], range is [-2900, 100], return 2
# recent_counter.ping(3001);   requests = [1, 100, 3001], range is [1, 3001], return 3
# recent_counter.ping(3002);   requests = [100, 3001, 3002], range is [2, 3002], return 3 because 3002 - 3000 (2) > @queue.first (1)
# final output [1, 2, 3, 3]

# recent_counter_two = RecentCounter.new

# recent_counter_two.ping(1178);   requests = [1178], range is [-1822,1178], return 1
# recent_counter_two.ping(1483);   requests = [1178, 1483], range is [-1517, 1483], return 2
# recent_counter_two.ping(1563);   requests = [1178, 1483, 1563], range is [-1437, 1563], return 3
# recent_counter_two.ping(4054);   requests = [1178, 1483, 1563, 4054], range is [1054, 4054], return 4
# recent_counter_two.ping(4152);   requests = [1178, 1483, 1563, 4054, 4152], range is [1152, 4152], return 5
#  final output [1, 2, 3, 4, 5]

# recent_counter_three = RecentCounter.new

# recent_counter_three.ping(2196);   requests = [2196], range is [-804, 2196], return 1
# recent_counter_three.ping(3938);   requests = [2196, 3938], range is [939, 3938], return 2
# recent_counter_three.ping(4723);   requests = [2196, 3938, 4723], range is [1723, 4723], return 3
# recent_counter_three.ping(4775);   requests = [2196, 3938, 4723, 4775], range is [1775, 4775], return 4
# recent_counter_three.ping(5952);   requests = [3938, 4723, 4775, 5952], range is [2952, 5952], return 4 because 5952 - 3000 (2952) > @queue.first (2196)
# final output [1, 2, 3, 4, 4]
