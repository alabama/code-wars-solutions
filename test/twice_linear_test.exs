defmodule TwiceLinearTest do
  use ExUnit.Case

  alias TwiceLinear

  @moduletag :capture_log

  doctest TwiceLinear

  test "module exists" do
    assert is_list(TwiceLinear.module_info())
  end

  def do_test(n, exp) do
    IO.puts("Testing : #{n}")
    act = TwiceLinear.dbl_linear(n)
    IO.puts("act: #{act}")
    IO.puts("exp: #{exp}")
    assert act == exp
    IO.puts("#")
  end

  test "dbl_linear" do
    do_test(10, 22)
    do_test(20, 57)
    do_test(30, 91)
    do_test(50, 175)

  end
end
