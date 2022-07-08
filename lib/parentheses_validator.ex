defmodule ParenthesesValidator do

  def valid_parentheses(string), do: valid_parentheses(String.graphemes(string), [])
  def valid_parentheses([], []), do: true
  def valid_parentheses([], stack) when length(stack) > 0, do: false
  def valid_parentheses(["(" | remainder], stack), do: valid_parentheses(remainder, ["(" | stack ])
  def valid_parentheses([")" | remainder], ["(" | stack_rest]), do: valid_parentheses(remainder, stack_rest)
  def valid_parentheses([")" | _], []), do: false
  def valid_parentheses([_|remainder], stack), do: valid_parentheses(remainder, stack)

end
