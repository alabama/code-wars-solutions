defmodule(Thrift.Generated.Work) do
  @moduledoc(false)
  _ = "Auto-generated Thrift struct nested.Work"
  _ = "1: string string_to_check"
  _ = "2: string comment"
  defstruct(string_to_check: nil, comment: nil)
  @type(t :: %__MODULE__{})
  def(new) do
    %__MODULE__{}
  end
  defmodule(BinaryProtocol) do
    @moduledoc(false)
    def(deserialize(binary)) do
      deserialize(binary, %Thrift.Generated.Work{})
    end
    defp(deserialize(<<0, rest::binary>>, %Thrift.Generated.Work{} = acc)) do
      {acc, rest}
    end
    defp(deserialize(<<11, 1::16-signed, string_size::32-signed, value::binary-size(string_size), rest::binary>>, acc)) do
      deserialize(rest, %{acc | string_to_check: value})
    end
    defp(deserialize(<<11, 2::16-signed, string_size::32-signed, value::binary-size(string_size), rest::binary>>, acc)) do
      deserialize(rest, %{acc | comment: value})
    end
    defp(deserialize(<<field_type, _id::16-signed, rest::binary>>, acc)) do
      rest |> Thrift.Protocol.Binary.skip_field(field_type) |> deserialize(acc)
    end
    defp(deserialize(_, _)) do
      :error
    end
    def(serialize(%Thrift.Generated.Work{string_to_check: string_to_check, comment: comment})) do
      [case(string_to_check) do
        nil ->
          <<>>
        _ ->
          [<<11, 1::16-signed, byte_size(string_to_check)::32-signed>> | string_to_check]
      end, case(comment) do
        nil ->
          <<>>
        _ ->
          [<<11, 2::16-signed, byte_size(comment)::32-signed>> | comment]
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