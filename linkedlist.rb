ass LinkedList
  def initialize(head = nil)
    @head = head
    @tail
  end

  def head
    @head
  end

  def [](index)
   if @head
      node = @head
   index.times do
      node = node.link
   end
      node.data
   else
       nil
   end
  end

  def shift
    if @head
      node = @head
      @head = @head.link
       node.data
    else
      nil
    end
  end

  def unshift(data)
    tempNode = @head
    @head = Node.new(data, tempNode)
  end

  def << (data)
   if head
    node = head
   while node.link
    node = node.link
   end
    link = Node.new("z", nil)
   end
  end
end
class Node
  def initialize(data, link = nil)
    @data = data
    @link = link
  end

  def data
    @data
  end

  def link
    @link
  end

end
