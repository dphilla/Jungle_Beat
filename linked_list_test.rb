gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'linked_list'


class LinkedListTest < Minitest::Test

  def test_list_has_head
    list = LinkedList.new
    result = list.head
    assert_nil(result)
  end

  def test_list_can_append_beat
    list = LinkedList.new
    result = list.append("doop")
    assert_equal(result, "doop")
    end


  def test_count_can_count
    list = LinkedList.new
    result = list.count
    assert_equal(0, result)
  end

  def test_can_add_appends_to_string
    list = LinkedList.new
    list.append("deep")
    list.append("doop")
    result = list.to_string
    assert_equal("deep doop", result)
  end

  def test_can_prepend_correctly
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    result = list.prepend("dop")
    result = list.to_string
    assert_equal("dop plop suu", result)
  end

  def test_can_insert_correctly
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    result = list.to_string
    assert_equal("dop woo plop suu", result)
  end

#edgecase_insert

  def test_non_existing_position_given
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    result = list.insert(9, "woo") #this position doesn't exist in this state of list
    assert_equal("position does not exist", result)
  end

  def test_can_find
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    result = list.find("dop")
    assert_equal("dop is at position 1", result)
  end

  def test_can_pop
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    total = list.count
    list.pop
    assert_equal(total - 1, list.count)
  end

  def test_can_return_include?
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    result = list.includes?("dop")
    assert_equal(true, result)
  end


end
