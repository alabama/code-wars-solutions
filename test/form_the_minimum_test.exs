defmodule FormTheMinimumTest do
  use ExUnit.Case

  alias FormTheMinimum

  @moduletag :capture_log

  doctest FormTheMinimum #https://www.codewars.com/kata/5ac6932b2f317b96980000ca

  test "module exists" do
    assert is_list(FormTheMinimum.module_info())
  end

  test "small vector size" do
    assert FormTheMinimum.minValue([1, 3, 1]) == 13
    assert FormTheMinimum.minValue([4, 5, 4, 7]) == 457
    assert FormTheMinimum.minValue([4, 8, 1, 4]) == 148
    assert FormTheMinimum.minValue([5, 7, 9, 5, 7, 7]) == 579
    assert FormTheMinimum.minValue([6, 7, 8, 7, 6, 6]) == 678
  end
end
