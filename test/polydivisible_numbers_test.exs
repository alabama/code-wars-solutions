defmodule PolydivisibleNumbersTest do
  use ExUnit.Case

  def test_is(s,n,sol), do: assert PolydivisibleNumbers.is_polydivisible(s,n) == sol
  def test_get(n1,n2,sol), do: assert PolydivisibleNumbers.get_polydivisible(n1,n2) == sol


  describe "Sample Tests" do
    test "s = 1232, b = 10",do: test_is("1232", 10, true)
    test "s = 123220, b = 10",do: test_is("123220", 10, false)
    test "s = 123220, b = 6",do: test_is("123220", 6, true)

#    test "22 and 10",do: test_get(22,10,"32")
#    test "42 and 16",do: test_get(42,16,"42")
  end
end
