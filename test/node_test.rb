require "minitest/autorun"
require "minitest/pride"
require "./lib/node"


class NodeTest < Minitest::Test

  def test_if_node_contains_data
    node = Node.new("plop")
    node.data
    assert "plop", node.data
  end

  def test_if_next_node_is_empty
    node = Node.new("plop")
    node.next_node
    assert_nil node.next_node
  end
end
