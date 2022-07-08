defmodule AreTheyTheSame do
  @spec comp([number], [number]) :: boolean
  def comp(a, b) when length(a) != length(b), do: false
  def comp(a, b), do: comp_element(Enum.sort(a), Enum.sort(b))
  defp comp_element([], []), do: true
  defp comp_element([head_a | tail_a], [head_b | tail_b]) when head_a * head_a == head_b, do: comp_element(tail_a, tail_b)
  defp comp_element(_,_), do: false



end
