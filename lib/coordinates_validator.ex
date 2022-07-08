defmodule CoordinatesValidator do
  def isValidCoordinates(coordinates) do
    [{lat, ""}, {lng, ""}] = coordinates |> String.split(~r/, ?/) |> Enum.map(&Float.parse/1)
    abs(lat) <= 90 and abs(lng) <= 180 and Regex.match?(~r/^[-., 0-9]+$/, coordinates)
  rescue
    MatchError -> false
  end
end
