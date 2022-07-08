defmodule AllPossibleSubsequences do
  @moduledoc false
  def subsequence(str) do
    str
    |> String.codepoints()
    |> Enum.reverse()
    |> subsequence([])
  end
  def subsequence([t | h], acc), do: subsequence(h, [t] ++ Enum.map(acc, & (t <> &1)) ++ acc)
  def subsequence([], acc), do: acc
end
