defmodule Test.SumsOfPartsTest do
  use ExUnit.Case

  alias SumsOfParts

  @moduletag :capture_log

  doctest SumsOfParts #https://www.codewars.com/kata/sums-of-parts/train/elixir

  test "module exists" do
    assert is_list(SumsOfParts.module_info())
  end

  def testing(ls, exp) do
    act = SumsOfParts.parts_sums(ls)
    assert act == exp
  end

  test "parts_sums, fixed tests" do
    testing([1, 2, 3, 4, 5, 6], [21, 20, 18, 15, 11, 6, 0])

    ls = [744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]
    testing(ls, [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0])

    testing([], [0])

  end
end
