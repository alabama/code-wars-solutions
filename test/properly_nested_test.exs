defmodule Test.ProperlyNestedTest do
  use ExUnit.Case

  alias Thrift.Generated.InvalidStringError
  alias Thrift.Generated.ProperlyNested.Binary.Framed.Client
  alias Thrift.Generated.Work

  setup do
    port = Application.get_env(:properly_nested, :port, 9090)
    {:ok, client} = Client.start_link("localhost", port)
    %{client: client}
  end


  test "empty string will return true", %{client: client} do
    assert {:ok, true} = Client.is_properly_nested(client, %Work{string_to_check: ""})
    assert true = Client.is_properly_nested!(client, %Work{string_to_check: ""})
  end

  test "normal simple nested string works as well", %{client: client} do
    assert {:ok, true} = Client.is_properly_nested(client, %Work{string_to_check: "()"})
    assert true = Client.is_properly_nested!(client, %Work{string_to_check: "{}"})
  end

  test "throw of invalid string error when false string given", %{client: client} do
    assert {:error, {:exception, %InvalidStringError{}}} = Client.is_properly_nested(client, %Work{string_to_check: "(a"})
  end
end
