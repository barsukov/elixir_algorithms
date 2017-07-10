defmodule ElixirAlgorithmsTest do
  use ExUnit.Case
  doctest ElixirAlgorithms

  describe "BinarySearch.search/2" do
    test "found element recursively in sorted array" do
      sorted_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

      assert BinarySearch.search_recursive(3, sorted_array) == {:ok, :element_was_found}
      assert BinarySearch.search_recursive(4, sorted_array) == {:ok, :element_was_found}
      assert BinarySearch.search_recursive(8, sorted_array) == {:ok, :element_was_found}
    end
    
    test "not found element recursively in sorted array" do
      sorted_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

      assert BinarySearch.search_recursive(10, sorted_array) == {:error, :element_was_not_found}
      assert BinarySearch.search_recursive(0, sorted_array) == {:error, :element_was_not_found}
    end
  end
end
