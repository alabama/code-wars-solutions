defmodule Test.PileOfCubesTest do
  use ExUnit.Case

  alias PileOfCubes

  @moduletag :capture_log

  doctest PileOfCubes #https://www.codewars.com/kata/5592e3bd57b64d00f3000047

  test "module exists" do
    assert is_list(PileOfCubes.module_info())
  end

  use ExUnit.Case

  def test_find_Nb(numtest, m, ans) do
    IO.puts("Test #{numtest}")
    assert  PileOfCubes.find_nb(m) == ans
  end

  test "find_nb" do
    test_find_Nb  1, 4183059834009, 2022
    test_find_Nb  2, 24723578342962, -1
    test_find_Nb  3, 135440716410000, 4824
    test_find_Nb  4, 40539911473216, 3568
    test_find_Nb  5, 3272704463493136, 10696
    test_find_Nb  6, 478840305056400, 6615
    test_find_Nb  7, 1025292944081385001, 45001
    test_find_Nb  8, 10252519345963644753025, 450010
    test_find_Nb  9, 1025247423603083074023000250000, 45001000
  end
end
