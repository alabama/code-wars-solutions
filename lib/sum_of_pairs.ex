defmodule SumOfPairs do
  @doc """
  Finds the first pair of ints as judged by the index of the second value.
  iex> sum_pairs( [ 10, 5, 2, 3, 7, 5 ], 10 )
  { 3, 7 }
  """

  @spec sum_pairs( [ integer ], integer ) :: { integer, integer } | nil

  def sum_pairs( ints, sum ) do
    Enum.reduce_while(ints, MapSet.new(), fn int, map ->
      if MapSet.member?(map, sum-int) do
        {:halt, {sum-int, int}}
      else
        {:cont, MapSet.put(map, int)}
      end
    end)
    |> case do
        result when is_tuple(result) -> result
        _ -> nil
       end
  end

end
