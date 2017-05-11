require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"
require "./lib/node"
# require 'pry'

class LinkedListTest < Minitest::Test

  def test_is_head_empty
    list = LinkedList.new
    assert_nil list.head
  end

  def test_what_is_the_value_of_append
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_it_appends_other_values
    list = LinkedList.new
    assert_equal "taco", list.append("taco")
  end

  def test_is_it_storing_to_data_inside_head
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
  end

  def test_is_next_node_in_head_still_empty
    list = LinkedList.new
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_what_is_the_count
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_what_is_the_count_with_more_appends
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("taco")
    assert_equal 3, list.count
  end

  def test_does_to_string_return_doop
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_is_to_string_still_doop_or_is_it_taco
    list = LinkedList.new
    list.append("taco")
    assert_equal "taco", list.to_string
  end

  def test_does_to_string_return_doop_deep
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_does_append_create_new_instance_of_node_and_store_in_data
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
    assert_equal "doop", list.head.data
  end

  def test_can_you_append_more_than_twice
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("plop")
    list.append("taco")
    assert_equal "doop", list.head.data
    assert_equal "deep", list.head.next_node.data
    assert_equal "plop", list.head.next_node.next_node.data
    assert_equal "taco", list.head.next_node.next_node.next_node.data
  end

  def test_does_prepend_become_the_next_head
    list = LinkedList.new
    list.prepend("dop")
    assert_equal "dop", list.prepend("dop")
  end

  def test_does_prepend_insert_at_beginning_of_to_string
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end

  def test_does_insert_go_woo #
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "woo", list.insert(1, "woo")
  end

  def test_does_insert_go_taco_in_between_plop_and_suu
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(2, "taco")
    assert_equal "taco", list.insert(2, "taco")
  end

  def test_but_does_it_insert_woo_into_to_string
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_is_to_string_ready_for_iteration_4
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "deep woo shi shu blop", list.to_string
  end

  def test_does_find_at_position_2_return_one_string_shi
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "shi", list.find(2, 1)
  end

  def test_does_find_at_position_1_return_one_string_woo_shi_shu
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_can_it_check_if_deep_is_included
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal true, list.includes?("deep")
  end

  def test_can_it_check_if_dep_is_included
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal false, list.includes?("dep")
  end
end
