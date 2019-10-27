defmodule NestedString do
  @moduledoc false
  @allowed_codepoints ["(", ")", "{", "}", "[", "]"]
  def is_properly_nested(string) when not is_binary(string), do: false
  def is_properly_nested(string) when rem(byte_size(string), 2) !== 0, do: false
  def is_properly_nested(string) when byte_size(string) <= 0, do: true
  def is_properly_nested(string) do
    help_map = %{
      ")" => "(",
      "}" => "{",
      "]" => "["
    }
    # we first split the given string to it's codepoints
    String.codepoints(string)
    |> Enum.reduce_while(Stack.new, fn codepoint, stack ->
      if !Enum.member?(@allowed_codepoints, codepoint), do: raise("'#{inspect(codepoint)}' is not allowed in the given string, only '#{inspect(@allowed_codepoints)}'")
      # we check if the current codepoint is a closing bracket
      cond do
        Map.has_key?(help_map, codepoint) and !Stack.empty?(stack) ->
          {stack, stack_codepoint} = Stack.pop(stack)
          help_map_codepoint = Map.get(help_map, codepoint)
          if(help_map_codepoint === stack_codepoint) do
            {:cont, stack}
          else
            {:halt, [false]}
          end
        Map.has_key?(help_map, codepoint) and Stack.empty?(stack) ->
          #if it's a closing bracket, but the stack is already empty
          {:halt, [false]}
        true ->
          #if it is not a closing bracket, we add it to our stack
          {:cont, Stack.push(stack, codepoint)}
      end
    end)
    |> Stack.empty?
  end
end
