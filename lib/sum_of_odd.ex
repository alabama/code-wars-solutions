defmodule SumOfOdd do
  def row_sum_odd_numbers(n) do
    #row_start of 1, 3, 7, 13, 21, 31, 43  ...
    # is +1 +2 +4 +6 +8+ 10 +12 ....
    # so start number of row will be start_number = start_number_n-1 + (row-1)*2
    {start_number, end_number} = Enum.reduce(1..n+1, {1, 1}, fn row, {_, acc} -> {acc, ((row-1)*2) + acc}  end)
    Enum.take_every(start_number..end_number-1, 2)
    |> Enum.sum()
  end

end
