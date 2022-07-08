defmodule FormTheMinimum do
  def minValue(numbers) do
    numbers
    |> MapSet.new()
    |> MapSet.to_list()
    |> Integer.undigits()
  end

end
