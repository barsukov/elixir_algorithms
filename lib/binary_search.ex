defmodule BinarySearch do
  @moduledoc """
  Documentation for BinarySearch.
  """

  @doc """

  ## Examples
      iex> element = 7
      iex> sorted_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      iex> BinarySearch.search_recursive(element, sorted_array)
      iex> {:ok, :element_was_found}
  """

  def search_recursive(element, sorted_array) when length(sorted_array) > 0 do
    left = 0
    right = length(sorted_array) - 1
    search_recursive(element, sorted_array, left, right)
  end
  defp search_recursive(_, _, left, right) when left > right, do: {:error, :element_was_not_found}
  defp search_recursive(element, sorted_array, left, right) when left <= right do
    mid = round(left + ((right - left) / 2))
    value = Enum.at(sorted_array, mid)

    cond do
      element < value -> search_recursive(element, sorted_array, left, mid - 1)
      element > value -> search_recursive(element, sorted_array, mid + 1, right )
      element == value -> {:ok, :element_was_found}
      true -> {:error, :element_was_not_found}
    end
   
  end
end
