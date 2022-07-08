defmodule Test.MexicanWaveTest do
  use ExUnit.Case

  alias MexicanWave

  @moduletag :capture_log

  doctest MexicanWave #https://www.codewars.com/kata/58f5c63f1e26ecda7e000029

  test "module exists" do
    assert is_list(MexicanWave.module_info())
  end

  test "simple chars with whitespace" do
    assert ["A       b    ", "a       B    "] = MexicanWave.wave("a       b    ")
  end

  test "simple sentence" do
    assert [
             "This is a few words",
             "tHis is a few words",
             "thIs is a few words",
             "thiS is a few words",
             "this Is a few words",
             "this iS a few words",
             "this is A few words",
             "this is a Few words",
             "this is a fEw words",
             "this is a feW words",
             "this is a few Words",
             "this is a few wOrds",
             "this is a few woRds",
             "this is a few worDs",
             "this is a few wordS"
           ] = MexicanWave.wave("this is a few words")
  end

  test "word surrounded by whitespace" do
    assert [" Gap ", " gAp ", " gaP "] = MexicanWave.wave(" gap ")
  end
end
