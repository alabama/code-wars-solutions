defmodule Test.NestedStringTest do
  use ExUnit.Case
  doctest NestedString

  test "empty string will return true" do
    assert NestedString.is_properly_nested("")
  end
  test "non string will return false" do
    refute NestedString.is_properly_nested(1)
    refute NestedString.is_properly_nested([])
    refute NestedString.is_properly_nested('a')
  end

  test "simple nested string wil return true" do
    assert NestedString.is_properly_nested("()")
    assert NestedString.is_properly_nested("{}")
    assert NestedString.is_properly_nested("[]")
    assert NestedString.is_properly_nested("[()]")
    assert NestedString.is_properly_nested("{[{()}]}")
  end

  test "VW nested string wil return true" do
    assert NestedString.is_properly_nested("(){}")
    assert NestedString.is_properly_nested("{}({()})")
    assert NestedString.is_properly_nested("[{}]{}")
    assert NestedString.is_properly_nested("[(())][{}(()()())][][]")
  end

  test "100k open and 100k closed will return true" do
    open_brackets = Enum.map(1..100_000, fn _ -> "(" end) |> Enum.join()
    closed_brackets = Enum.map(1..100_000, fn _ -> ")" end) |> Enum.join()
    assert NestedString.is_properly_nested(open_brackets <> closed_brackets)
  end
  test "100k open and 100k closed followed by )( will return false" do
    open_brackets = Enum.map(1..10_000, fn _ -> "{" end) |> Enum.join()
    closed_brackets = Enum.map(1..10_000, fn _ -> "}" end) |> Enum.join()
    refute NestedString.is_properly_nested(open_brackets <> closed_brackets <> ")(")
  end
  test "10k open and 10k closed followed by [] will return true" do
    open_brackets = Enum.map(1..10_000, fn _ -> "{" end) |> Enum.join()
    closed_brackets = Enum.map(1..10_000, fn _ -> "}" end) |> Enum.join()
    assert NestedString.is_properly_nested(open_brackets <> closed_brackets <> "[]")
  end

  test "negative match" do
    refute NestedString.is_properly_nested(")(")
    refute NestedString.is_properly_nested("))((")
  end
end
