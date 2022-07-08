defmodule LotteryTicket do

  def bingo(ticket, win) do
    ticket
    |> Enum.map(&apply(LotteryTicket, :is_mini_win?, &1))
    |> Enum.sum()
    |> winner(win)
  end
  def winner(wins, min_win) when wins >= min_win, do: "Winner!"
  def winner(_, _), do: "Loser!"
  def is_mini_win?(<<char_code::utf8, _::binary>>, char_code), do: 1
  def is_mini_win?(<<_::utf8, rest::binary>>, char_code), do: is_mini_win?(rest, char_code)
  def is_mini_win?(<<>>, _), do: 0

  def asdf() do
    65 in "ASDF"
  end
end
