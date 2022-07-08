defmodule PolydivisibleNumbers do
  @moduledoc false


  def is_polydivisible(s,b) do
    s
    |> String.codepoints()
    |> Enum.scan("", fn codepoint, acc -> acc<>codepoint end)
    |> Enum.all?(fn entry -> Kernel.rem(String.to_integer(entry, b), String.length(entry)) === 0 end)
  end


  def get_polydivisible(n,b) do
    # your code here
  end
end
