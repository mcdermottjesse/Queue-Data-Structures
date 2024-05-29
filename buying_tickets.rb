# https://leetcode.com/problems/time-needed-to-buy-tickets/description/

class BuyingTickets
  def time_required_to_buy(tickets, k)
    counter = 0
    index = 0
    while tickets[k] > 0
        if tickets[index] > 0
            counter += 1
            tickets[index] -= 1
        end
        # Ensures that if index reaches the length of the array, it starts at 0 again
        index = (index + 1) % tickets.length
    end
    counter
  end
end

# buying_tickets = BuyingTickets.new

# p buying_tickets.time_required_to_buy([5,1,1,1], 0) # 8

# p buying_tickets.time_required_to_buy([2,3,2], 2) # 6
