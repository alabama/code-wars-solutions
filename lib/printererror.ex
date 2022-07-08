defmodule Printererror do
  @moduledoc false
  @start_char_ascii 96 #a
  @end_char_ascii 109 #m

  def printer_error(str) when is_binary(str) do
    string_length = String.length(str)
    count_valid_chars =
      String.graphemes(str)
      |> Enum.count(&valid_char?/1)
    "#{inspect(string_length-count_valid_chars)}/#{string_length}"
  end
  def valid_char?(<<char::utf8>>), do: @start_char_ascii <= char  && char <= @end_char_ascii
end
