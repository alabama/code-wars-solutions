defmodule Test.PrintererrorTest do
  use ExUnit.Case

  alias Printererror

  @moduletag :capture_log

  doctest Printererror

  test "module exists" do
    assert is_list(Printererror.module_info())
  end

  defp testing(numtest, s, ans) do
    IO.puts("Test #{numtest} \n")
    assert Printererror.printer_error(s) == ans
  end
  test "printer_error" do
    s = "aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
    testing(1, s, "3/56")
    s = "kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
    testing(2, s, "6/60")
    s = "kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu"
    testing(3, s, "11/65")
  end
end
