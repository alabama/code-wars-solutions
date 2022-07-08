defmodule Test.ParenthesesValidatorTest do
  use ExUnit.Case

  alias ParenthesesValidator

  @moduletag :capture_log

  doctest ParenthesesValidator # https://www.codewars.com/kata/valid-parentheses/train/elixir

  test "module exists" do
    assert is_list(ParenthesesValidator.module_info())
  end

  test "valid_parentheses" do
    assert ParenthesesValidator.valid_parentheses("()") == true
    assert ParenthesesValidator.valid_parentheses(")(()))") == false
    assert ParenthesesValidator.valid_parentheses("(") == false
    assert ParenthesesValidator.valid_parentheses("(())((()())())") == true
  end
end
