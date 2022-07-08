defmodule TribonacciSequence do
  @moduledoc false

  @spec tribonacci({number, number, number}, non_neg_integer) :: [number]
  def tribonacci(tuple, 0) when is_tuple(tuple), do: []
  def tribonacci(tuple, n) when is_tuple(tuple), do: Tuple.to_list(tuple) |> Enum.reverse() |> tribonacci(n)
  def tribonacci(seq, n) when n <= length(seq), do: Enum.reverse(seq) |> Enum.take(n)
  def tribonacci([h1| [h2| [h3 | _]]] = seq, n), do: tribonacci([h1 + h2 + h3] ++ seq, n)
end
