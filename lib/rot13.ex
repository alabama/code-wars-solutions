defmodule Rot13 do
  def rot13(string) do
    String.to_charlist(string)
    |> Enum.map(&validate_char/1)
    |> List.to_string()
  end
  defp validate_char(char) when char in hd('A')..hd('Z'), do: transform_range(char + 13, hd('A'), hd('Z'))
  defp validate_char(char) when char in hd('a')..hd('z'), do: transform_range(char + 13, hd('a'), hd('z'))
  defp validate_char(char), do: char
  defp transform_range(new_char, min, max), do: rem((new_char - min), (max - min + 1)) + min
end
