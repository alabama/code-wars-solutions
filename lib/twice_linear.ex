defmodule TwiceLinear do
  @moduledoc """
    Consider a sequence u where u is defined as follows:

    The number u(0) = 1 is the first one in u.
    For each x in u, then y = 2 * x + 1 and z = 3 * x + 1 must be in u too. There are no other numbers in u.
    Ex: u = [1, 3, 4, 7, 9, 10, 13, 15, 19, 21, 22, 27, ...]
    1 gives 3 and 4, then 3 gives 7 and 10, 4 gives 9 and 13, then 7 gives 15 and 22 and so on...

    Task: Given parameter n the function dbl_linear (or dblLinear...) returns the element u(n) of the ordered (with <) sequence u.

    Example: dbl_linear(10) should return 22

    Note: Focus attention on efficiency
  """

  def dbl_linear(n) do
    dbl_linear(n, 1, %{0 => 1}, 0, 0)
  end
  def dbl_linear(n, next_index, result_map, _, _) when n === next_index - 1, do: Map.get(result_map, next_index-1)
  def dbl_linear(n, next_index, result_map, index_y, index_z) do
    y = y(Map.get(result_map, index_y)) # we could save already calculated results, but ... mehh
    z = z(Map.get(result_map, index_z)) # we could save already calculated results, but ... mehh
    cond do
      y === z -> dbl_linear(n, next_index+1, Map.put(result_map, next_index, y), index_y+1, index_z+1)
      y < z -> dbl_linear(n, next_index+1, Map.put(result_map, next_index, y), index_y+1, index_z)
      y > z-> dbl_linear(n, next_index+1, Map.put(result_map, next_index, z), index_y, index_z+1)
    end
  end
  defp y(x), do: x+x+1
  defp z(x), do: x+x+x+1
end
