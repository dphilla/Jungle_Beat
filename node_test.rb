gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'


class NodeTest < Minitest::Test
  def test_data_takes_instance_var
    node = Node.new("plop")
    result = node.data
    assert_equal("plop", result)
  end

  def test_next_node_set_to_nil
    node = Node.new("plop")
    result = node.next_node
    assert_nil(result)
  end


end
