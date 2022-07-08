defmodule SumsOfParts do

  def parts_sums(ls), do: parts_sums(ls, [Enum.sum(ls)])
  def parts_sums([], sums), do: Enum.reverse(sums)
  def parts_sums([hd|tl], [hd_sum|_] = sums), do: parts_sums(tl, [hd_sum - hd | sums])

end
