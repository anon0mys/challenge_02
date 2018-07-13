=begin
Given a linked list, remove the n-th node from the end of list and return its head.
Example:
Given linked list: 1->2->3->4->5, and n = 2.
After removing the second node from the end, the linked list becomes 1->2->3->5.
Note:
Given n will always be valid.
Follow up:
Could you do this in one pass?
Use the following Ruby code to get started
=end

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end

    def add_node(val)
      if @next
        @next.add_node(val)
      else
        @next = ListNode.new(val)
      end
    end
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}

def remove_nth_from_end(head, n)
  location = length(head) - n
  prev_node = position(head, location - 1)
  new_next_node = prev_node.next.next
  prev_node.next = new_next_node
end

def length(head, count = 0)
  count += 1
  node = head
  if node.next
    length(node.next, count)
  else
    count
  end
end

def position(head, val)
  node = head
  if node.next && val > 1
    position(node.next, val - 1)
  else
    node
  end
end
