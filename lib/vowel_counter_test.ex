defmodule VowelCounter do
  @moduledoc false
  @vowels "aeiou"
  def get_count(str) do
    String.codepoints(str)
    |> Enum.count(&String.contains?(@vowels, &1))
  end
end
