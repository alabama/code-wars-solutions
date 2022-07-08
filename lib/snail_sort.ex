defmodule SnailSort do
  @moduledoc false

  def snail([[]]), do: []
  def snail(matrix), do: snail("right", 0, 0, [], matrix, MapSet.new())
  def snail(_, _, _, result, matrix, _) when length(result) === (length(matrix) * length(matrix)), do: result

  def snail("right", x, y, result, matrix, hash) do
    if (x >= length(matrix) || MapSet.member?(hash, {x, y})) do
      snail("bottom", x-1, y+1, result, matrix, hash) #out of bound or inner hits outer
    else
      snail("right", x+1, y, result ++ [get(x, y, matrix)], matrix, MapSet.put(hash, {x, y}))
    end
  end
  def snail("bottom", x, y, result, matrix, hash) do
    if(y >= length(matrix) || MapSet.member?(hash, {x, y})) do
      snail("left", x-1, y-1, result, matrix, hash)
    else
      snail("bottom", x, y+1, result ++ [get(x, y, matrix)], matrix, MapSet.put(hash, {x, y}))
    end
  end
  def snail("left", x, y, result, matrix, hash) do
    if (x <= -1 || MapSet.member?(hash, {x, y})) do
      snail("top", x+1, y-1, result, matrix, hash)
    else
      snail("left", x-1, y, result ++ [get(x, y, matrix)], matrix, MapSet.put(hash, {x, y}))
    end
  end
  def snail("top", x, y, result, matrix, hash) do
    if (MapSet.member?(hash, {x, y})) do
      snail("right", x+1, y+1, result, matrix, hash)
    else
      snail("top", x, y-1, result ++ [get(x, y, matrix)], matrix, MapSet.put(hash, {x, y}))
    end
  end

  defp get(x, y, matrix), do: matrix |> Enum.at(y, []) |> Enum.at(x)
end
