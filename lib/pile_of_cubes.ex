defmodule PileOfCubes do
  require Integer
  def find_nb(m) do
    find_nb(m, 1)
  end
  def find_nb(rest_of_m, _) when rest_of_m < 0, do: -1
  def find_nb(0, level), do: level-1
  def find_nb(rest_of_m, level) when rest_of_m > 0, do:  find_nb(rest_of_m - level*level*level, level+1)

end
