defmodule(Thrift.Generated.InvalidStringError) do
  @moduledoc(false)
  _ = "Auto-generated Thrift exception nested.InvalidStringError"
  _ = "1: string what_string"
  _ = "2: string why"
  defexception(what_string: nil, why: nil)
  @type(t :: %__MODULE__{})
  def(new) do
    %__MODULE__{}
  end
  (
    @spec(message(Exception.t()) :: String.t())
    def(message(exception)) do
      inspect(exception)
    end
  )
  defmodule(BinaryProtocol) do
    @moduledoc(false)
    def(deserialize(binary)) do
      deserialize(binary, %Thrift.Generated.InvalidStringError{})
    end
    defp(deserialize(<<0, rest::binary>>, %Thrift.Generated.InvalidStringError{} = acc)) do
      {acc, rest}
    end
    defp(deserialize(<<11, 1::16-signed, string_size::32-signed, value::binary-size(string_size), rest::binary>>, acc)) do
      deserialize(rest, %{acc | what_string: value})
    end
    defp(deserialize(<<11, 2::16-signed, string_size::32-signed, value::binary-size(string_size), rest::binary>>, acc)) do
      deserialize(rest, %{acc | why: value})
    end
    defp(deserialize(<<field_type, _id::16-signed, rest::binary>>, acc)) do
      rest |> Thrift.Protocol.Binary.skip_field(field_type) |> deserialize(acc)
    end
    defp(deserialize(_, _)) do
      :error
    end
    def(serialize(%Thrift.Generated.InvalidStringError{what_string: what_string, why: why})) do
      [case(what_string) do
        nil ->
          <<>>
        _ ->
          [<<11, 1::16-signed, byte_size(what_string)::32-signed>> | what_string]
      end, case(why) do
        nil ->
          <<>>
        _ ->
          [<<11, 2::16-signed, byte_size(why)::32-signed>> | why]
      end | <<0>>]
    end
  end
  def(serialize(struct)) do
    BinaryProtocol.serialize(struct)
  end
  def(serialize(struct, :binary)) do
    BinaryProtocol.serialize(struct)
  end
  def(deserialize(binary)) do
    BinaryProtocol.deserialize(binary)
  end
end