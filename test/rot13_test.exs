defmodule Test.Rot13Test do
  use ExUnit.Case

  alias Rot13

  @moduletag :capture_log

  doctest Rot13 #https://www.codewars.com/kata/rot13-1/train/elixir

  test "module exists" do
    assert is_list(Rot13.module_info())
  end

  test "test" do
    result = Rot13.rot13("test")
    assert "grfg" == result
  end

  test "Test" do
    result = Rot13.rot13("Test")
    assert "Grfg" == result
  end
end
