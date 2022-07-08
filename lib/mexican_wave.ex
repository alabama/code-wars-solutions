defmodule MexicanWave do
  def wave(""), do: []
  def wave(str) do
    codepoints = String.codepoints(str)
    codepoints
    |> Enum.with_index()
    |> Enum.map(&wave(&1, codepoints))
    |> Enum.filter(&is_binary/1)
  end
  def wave({" ", _}, _), do: nil
  def wave({char, index}, codepoints), do: List.replace_at(codepoints, index, String.upcase(char)) |> Enum.join()
end
