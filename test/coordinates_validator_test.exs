defmodule Test.CoordinatesValidatorTest do
  use ExUnit.Case

  alias CoordinatesValidator

  @moduletag :capture_log

  doctest CoordinatesValidator #https://www.codewars.com/kata/coordinates-validator/elixir

  test "module exists" do
    assert is_list(CoordinatesValidator.module_info())
  end

  @valid_coordinates [
    "-23, 25",
    "4, -3",
    "24.53525235, 23.45235",
    "04, -23.234235",
    "43.91343345, 143"
  ]

  @invalid_coordinates [
    "23.234, - 23.4234",
    "2342.43536, 34.324236",
    "N23.43345, E32.6457",
    "99.234, 12.324",
    "6.325624, 43.34345.345",
    "0, 1,2",
    "0.342q0832, 1.2324",
    "23.245, 1e1"
  ]

  test "validate coordinates" do
    for value <- @valid_coordinates do
      assert CoordinatesValidator.isValidCoordinates(value) == true
    end
  end

  test "invalidate coordinates" do
    for value <- @invalid_coordinates do
      assert CoordinatesValidator.isValidCoordinates(value) == false
    end
  end
end
