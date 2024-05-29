# https://leetcode.com/problems/first-unique-character-in-a-string/description/

# Given a string s, find the first non-repeating character in it 
# and return its index. If it does not exist, return -1.

class FirstUniqueChar
  def initialize(chars)
    @chars = chars
  end
  
  def solution
    queue = []
    track_deleted = []

    chars = @chars.split("")

    chars.each do |char|
        if queue.include?(char) || track_deleted.include?(char)
            queue.delete(char)
            track_deleted.push(char)
        else
            queue.push(char)  
        end
    end
    get_index = chars.index(queue.first) 
    get_index == nil ? -1 : get_index
  end

  def solution_two
    hash = Hash.new(0)
    @chars.each_char{ |char| hash[char] += 1 }

    @chars.each_char.each_with_index do |char, index|
      return index if hash[char] == 1
     end

     -1
  end
end
