defmodule AllPossibleSubsequencesTest do
  use ExUnit.Case

  alias AllPossibleSubsequences

  @moduletag :capture_log

  doctest AllPossibleSubsequences

  test "module exists" do
    assert is_list(AllPossibleSubsequences.module_info())
  end

  test "All Possible Subsequences" do
    IO.inspect(AllPossibleSubsequences.subsequence("a"))
    IO.inspect(AllPossibleSubsequences.subsequence("bc"))
    IO.inspect(AllPossibleSubsequences.subsequence("abcd"))
    IO.inspect(AllPossibleSubsequences.subsequence("abcdefghijklmnopqrst") |> Enum.count)

    asdf = AllPossibleSubsequences.subsequence("xyz")
    IO.inspect(asdf)
    assert asdf |> is_list
  end
end
