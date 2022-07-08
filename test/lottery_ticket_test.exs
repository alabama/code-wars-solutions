defmodule Test.LotteryTicketTest do
  use ExUnit.Case

  alias LotteryTicket

  @moduletag :capture_log

  doctest LotteryTicket #https://www.codewars.com/kata/57f625992f4d53c24200070e/train/elixir

  test "module exists" do
    assert is_list(LotteryTicket.module_info())
  end

  test "Basic Tests" do
    assert LotteryTicket.bingo([["ABC", 65], ["HGR", 74], ["BYHT", 74]], 2) == "Loser!"
    assert LotteryTicket.bingo([["ABC", 65], ["HGR", 74], ["BYHT", 74]], 1) == "Winner!"
    assert LotteryTicket.bingo([["HGTYRE", 74], ["BE", 66], ["JKTY", 74]], 3) == "Loser!"
  end
end
