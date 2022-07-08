defmodule IsAlienSorted do
  @moduledoc """
  In an alien language, surprisingly, they also use English lowercase letters, but possibly in a different order. The order of the alphabet is some permutation of lowercase letters.

  Given a sequence of words written in the alien language, and the order of the alphabet, return true if and only if the given words are sorted lexicographically in this alien language.



  Example 1:

  Input: words = ["hello","leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz"
  Output: true
  Explanation: As 'h' comes before 'l' in this language, then the sequence is sorted.
  Example 2:

  Input: words = ["word","world","row"], order = "worldabcefghijkmnpqstuvxyz"
  Output: false
  Explanation: As 'd' comes after 'l' in this language, then words[0] > words[1], hence the sequence is unsorted.
  Example 3:

  Input: words = ["apple","app"], order = "abcdefghijklmnopqrstuvwxyz"
  Output: false
  Explanation: The first three characters "app" match, and the second string is shorter (in size.) According to lexicographical rules "apple" > "app", because 'l' > '∅', where '∅' is defined as the blank character which is less than any other character (More info).


  Constraints:

  1 <= words.length <= 100
  1 <= words[i].length <= 20
  order.length == 26
  All characters in words[i] and order are English lowercase letters.
  """
  @spec is_alien_sorted(words :: [String.t], order :: String.t) :: boolean
  def is_alien_sorted(words, order) when is_binary(order) do
    order_map =
      order
      |> String.graphemes()
      |> Enum.with_index()
      |> Enum.into(%{})
    is_alien_sorted(words, order_map)
  end
  def is_alien_sorted([_ | []], %{} = _order_map), do: true
  def is_alien_sorted([head_word | [tail_word | _] = rest_words], %{} = order_map) do
    [head_word, tail_word]
    |> Enum.map(&String.graphemes/1)
    |> Enum.zip()
    |> Enum.reduce_while(nil, fn {first, second}, _ ->
      cond do
        Map.get(order_map, first) < Map.get(order_map, second) -> {:halt, true}
        Map.get(order_map, first) > Map.get(order_map, second) -> {:halt, false}
        Map.get(order_map, first) === Map.get(order_map, second) -> {:cont, nil}
      end
    end)
    |> case do
         false -> false
         true -> is_alien_sorted(rest_words, order_map)
         nil -> if String.length(head_word) <= String.length(tail_word), do: is_alien_sorted(rest_words, order_map), else: false
       end
  end
end
