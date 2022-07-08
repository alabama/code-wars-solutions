defmodule Test.VowelCounterTest do
  use ExUnit.Case

  alias VowelCounter

  @moduletag :capture_log

  doctest VowelCounter #https://www.codewars.com/kata/54ff3102c1bad923760001f3

  test "module exists" do
    assert is_list(VowelCounter.module_info())
  end

  test "get_count" do
    assert VowelCounter.get_count("abracadabra") == 5
    assert VowelCounter.get_count("this is a normal test sentence") == 9
  end
end
