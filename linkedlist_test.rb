require 'linked_list'

class List < Minitest::Test
  def test_array_list_is_initialized_empty
    list = LinkedList.new
   assert_equal  nil, list[0]
  end

  def test_can_shift
    list = LinkedList.new(Node.new("a", Node.new("b", Node.new("c", nil))))
    list.shift
    assert_equal "b", list[0]
  end

  def test_can_unshift
    list = LinkedList.new(Node.new("a", Node.new("b", Node.new("c", nil))))
    list.unshift("z")
    assert_equal "z", list[0]
  end

  def test_can_append
    list = LinkedList.new(Node.new("a", Node.new("b", Node.new("c", nil))))
    list << "z"
    assert_equal "z", list[3]
  end

  def test_can_haz_index?
    list = LinkedList.new(Node.new("a", Node.new("b", Node.new("c", nil))))
   assert_equal  "c", list[2]
   assert_equal  "b", list[1]
   assert_equal  "a", list[0]
  end
end
