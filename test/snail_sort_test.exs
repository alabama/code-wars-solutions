defmodule SnailSortTest do
  use ExUnit.Case

  alias SnailSort

  @moduletag :capture_log

  doctest SnailSort

  test "module exists" do
    assert is_list(SnailSort.module_info())
  end

  test "3x3 positions" do
    matrix = [ [ 1, 2, 3 ],
      [ 4, 5, 6 ],
      [ 7, 8, 9 ]
    ]

    assert SnailSort.snail( matrix ) == [ 1, 2, 3, 6, 9, 8, 7, 4, 5 ]
  end

  test "3x3 order" do
    matrix = [ [ 1, 2, 3 ],
      [ 8, 9, 4 ],
      [ 7, 6, 5 ]
    ]

    assert SnailSort.snail( matrix ) == [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
  end
end
