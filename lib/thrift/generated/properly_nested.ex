defmodule(Thrift.Generated.ProperlyNested) do
  @moduledoc(false)
  defmodule(IsProperlyNestedArgs) do
    @moduledoc(false)
    _ = "Auto-generated Thrift struct Elixir.IsProperlyNestedArgs"
    _ = "1: nested.Work w"
    defstruct(w: nil)
    @type(t :: %__MODULE__{})
    def(new) do
      %__MODULE__{}
    end
    defmodule(BinaryProtocol) do
      @moduledoc(false)
      def(deserialize(binary)) do
        deserialize(binary, %IsProperlyNestedArgs{})
      end
      defp(deserialize(<<0, rest::binary>>, %IsProperlyNestedArgs{} = acc)) do
        {acc, rest}
      end
      defp(deserialize(<<12, 1::16-signed, rest::binary>>, acc)) do
        case(Elixir.Thrift.Generated.Work.BinaryProtocol.deserialize(rest)) do
          {value, rest} ->
            deserialize(rest, %{acc | w: value})
          :error ->
            :error
        end
      end
      defp(deserialize(<<field_type, _id::16-signed, rest::binary>>, acc)) do
        rest |> Thrift.Protocol.Binary.skip_field(field_type) |> deserialize(acc)
      end
      defp(deserialize(_, _)) do
        :error
      end
      def(serialize(%IsProperlyNestedArgs{w: w})) do
        [case(w) do
          nil ->
            <<>>
          _ ->
            [<<12, 1::16-signed>> | Thrift.Generated.Work.serialize(w)]
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
  defmodule(PingArgs) do
    @moduledoc(false)
    _ = "Auto-generated Thrift struct Elixir.PingArgs"
    defstruct([])
    @type(t :: %__MODULE__{})
    def(new) do
      %__MODULE__{}
    end
    defmodule(BinaryProtocol) do
      @moduledoc(false)
      def(deserialize(binary)) do
        deserialize(binary, %PingArgs{})
      end
      defp(deserialize(<<0, rest::binary>>, %PingArgs{} = acc)) do
        {acc, rest}
      end
      defp(deserialize(<<field_type, _id::16-signed, rest::binary>>, acc)) do
        rest |> Thrift.Protocol.Binary.skip_field(field_type) |> deserialize(acc)
      end
      defp(deserialize(_, _)) do
        :error
      end
      def(serialize(%PingArgs{})) do
        <<0>>
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
  defmodule(PutsIoArgs) do
    @moduledoc(false)
    _ = "Auto-generated Thrift struct Elixir.PutsIoArgs"
    _ = "1: string printable"
    defstruct(printable: nil)
    @type(t :: %__MODULE__{})
    def(new) do
      %__MODULE__{}
    end
    defmodule(BinaryProtocol) do
      @moduledoc(false)
      def(deserialize(binary)) do
        deserialize(binary, %PutsIoArgs{})
      end
      defp(deserialize(<<0, rest::binary>>, %PutsIoArgs{} = acc)) do
        {acc, rest}
      end
      defp(deserialize(<<11, 1::16-signed, string_size::32-signed, value::binary-size(string_size), rest::binary>>, acc)) do
        deserialize(rest, %{acc | printable: value})
      end
      defp(deserialize(<<field_type, _id::16-signed, rest::binary>>, acc)) do
        rest |> Thrift.Protocol.Binary.skip_field(field_type) |> deserialize(acc)
      end
      defp(deserialize(_, _)) do
        :error
      end
      def(serialize(%PutsIoArgs{printable: printable})) do
        [case(printable) do
          nil ->
            <<>>
          _ ->
            [<<11, 1::16-signed, byte_size(printable)::32-signed>> | printable]
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
  defmodule(IsProperlyNestedResponse) do
    @moduledoc(false)
    _ = "Auto-generated Thrift struct Elixir.IsProperlyNestedResponse"
    _ = "0: bool success"
    _ = "1: nested.InvalidStringError fail"
    defstruct(success: nil, fail: nil)
    @type(t :: %__MODULE__{})
    def(new) do
      %__MODULE__{}
    end
    defmodule(BinaryProtocol) do
      @moduledoc(false)
      def(deserialize(binary)) do
        deserialize(binary, %IsProperlyNestedResponse{})
      end
      defp(deserialize(<<0, rest::binary>>, %IsProperlyNestedResponse{} = acc)) do
        {acc, rest}
      end
      defp(deserialize(<<2, 0::16-signed, 1, rest::binary>>, acc)) do
        deserialize(rest, %{acc | success: true})
      end
      defp(deserialize(<<2, 0::16-signed, 0, rest::binary>>, acc)) do
        deserialize(rest, %{acc | success: false})
      end
      defp(deserialize(<<12, 1::16-signed, rest::binary>>, acc)) do
        case(Elixir.Thrift.Generated.InvalidStringError.BinaryProtocol.deserialize(rest)) do
          {value, rest} ->
            deserialize(rest, %{acc | fail: value})
          :error ->
            :error
        end
      end
      defp(deserialize(<<field_type, _id::16-signed, rest::binary>>, acc)) do
        rest |> Thrift.Protocol.Binary.skip_field(field_type) |> deserialize(acc)
      end
      defp(deserialize(_, _)) do
        :error
      end
      def(serialize(%IsProperlyNestedResponse{success: success, fail: fail})) do
        [case(success) do
          nil ->
            <<>>
          false ->
            <<2, 0::16-signed, 0>>
          true ->
            <<2, 0::16-signed, 1>>
          _ ->
            raise(Thrift.InvalidValueError, "Optional boolean field :success on IsProperlyNestedResponse must be true, false, or nil")
        end, case(fail) do
          nil ->
            <<>>
          _ ->
            [<<12, 1::16-signed>> | Thrift.Generated.InvalidStringError.serialize(fail)]
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
  defmodule(PingResponse) do
    @moduledoc(false)
    _ = "Auto-generated Thrift struct Elixir.PingResponse"
    _ = "0: void success"
    defstruct(success: nil)
    @type(t :: %__MODULE__{})
    def(new) do
      %__MODULE__{}
    end
    defmodule(BinaryProtocol) do
      @moduledoc(false)
      def(deserialize(binary)) do
        deserialize(binary, %PingResponse{})
      end
      defp(deserialize(<<0, rest::binary>>, %PingResponse{} = acc)) do
        {acc, rest}
      end
      defp(deserialize(<<field_type, _id::16-signed, rest::binary>>, acc)) do
        rest |> Thrift.Protocol.Binary.skip_field(field_type) |> deserialize(acc)
      end
      defp(deserialize(_, _)) do
        :error
      end
      def(serialize(%PingResponse{})) do
        <<0>>
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
  defmodule(Binary.Framed.Client) do
    @moduledoc(false)
    alias(Thrift.Binary.Framed.Client, as: ClientImpl)
    defdelegate(close(conn), to: ClientImpl)
    defdelegate(connect(conn, opts), to: ClientImpl)
    defdelegate(start_link(host, port, opts \\ []), to: ClientImpl)
    def(unquote(:is_properly_nested)(client, w, rpc_opts \\ [])) do
      args = %IsProperlyNestedArgs{w: w}
      serialized_args = IsProperlyNestedArgs.BinaryProtocol.serialize(args)
      ClientImpl.call(client, "is_properly_nested", serialized_args, IsProperlyNestedResponse.BinaryProtocol, rpc_opts)
    end
    def(unquote(:is_properly_nested!)(client, w, rpc_opts \\ [])) do
      case(unquote(:is_properly_nested)(client, w, rpc_opts)) do
        {:ok, rsp} ->
          rsp
        {:error, {:exception, ex}} ->
          raise(ex)
        {:error, reason} ->
          raise(Thrift.ConnectionError, reason: reason)
      end
    end
    def(unquote(:ping)(client, rpc_opts \\ [])) do
      args = %PingArgs{}
      serialized_args = PingArgs.BinaryProtocol.serialize(args)
      ClientImpl.call(client, "ping", serialized_args, PingResponse.BinaryProtocol, rpc_opts)
    end
    def(unquote(:ping!)(client, rpc_opts \\ [])) do
      case(unquote(:ping)(client, rpc_opts)) do
        {:ok, rsp} ->
          rsp
        {:error, {:exception, ex}} ->
          raise(ex)
        {:error, reason} ->
          raise(Thrift.ConnectionError, reason: reason)
      end
    end
    def(unquote(:puts_io)(client, printable, rpc_opts \\ [])) do
      args = %PutsIoArgs{printable: printable}
      serialized_args = PutsIoArgs.BinaryProtocol.serialize(args)
      (
        :ok = ClientImpl.oneway(client, "puts_io", serialized_args, rpc_opts)
        {:ok, nil}
      )
    end
    def(unquote(:puts_io!)(client, printable, rpc_opts \\ [])) do
      case(unquote(:puts_io)(client, printable, rpc_opts)) do
        {:ok, rsp} ->
          rsp
        {:error, {:exception, ex}} ->
          raise(ex)
        {:error, reason} ->
          raise(Thrift.ConnectionError, reason: reason)
      end
    end
  end
  defmodule(Binary.Framed.Server) do
    @moduledoc(false)
    require(Logger)
    alias(Thrift.Binary.Framed.Server, as: ServerImpl)
    defdelegate(stop(name), to: ServerImpl)
    def(start_link(handler_module, port, opts \\ [])) do
      ServerImpl.start_link(__MODULE__, port, handler_module, opts)
    end
    def(handle_thrift("is_properly_nested", binary_data, handler_module)) do
      case(Elixir.Thrift.Generated.ProperlyNested.IsProperlyNestedArgs.BinaryProtocol.deserialize(binary_data)) do
        {%Thrift.Generated.ProperlyNested.IsProperlyNestedArgs{w: w}, ""} ->
          try do
            rsp = handler_module.is_properly_nested(w)
            (
              response = %Thrift.Generated.ProperlyNested.IsProperlyNestedResponse{success: rsp}
              {:reply, Elixir.Thrift.Generated.ProperlyNested.IsProperlyNestedResponse.BinaryProtocol.serialize(response)}
            )
          rescue
            fail in Thrift.Generated.InvalidStringError ->
              response = %Thrift.Generated.ProperlyNested.IsProperlyNestedResponse{fail: fail}
              {:reply, Elixir.Thrift.Generated.ProperlyNested.IsProperlyNestedResponse.BinaryProtocol.serialize(response)}
          catch
            kind, reason ->
              formatted_exception = Exception.format(kind, reason, System.stacktrace())
              Logger.error("Exception not defined in thrift spec was thrown: #{formatted_exception}")
              error = Thrift.TApplicationException.exception(type: :internal_error, message: "Server error: #{formatted_exception}")
              {:server_error, error}
          end
        {_, extra} ->
          raise(Thrift.TApplicationException, type: :protocol_error, message: "Could not decode #{inspect(extra)}")
      end
    end
    def(handle_thrift("ping", _binary_data, handler_module)) do
      try do
        rsp = handler_module.ping()
        (
          _ = rsp
          :noreply
        )
      rescue
        []
      catch
        kind, reason ->
          formatted_exception = Exception.format(kind, reason, System.stacktrace())
          Logger.error("Exception not defined in thrift spec was thrown: #{formatted_exception}")
          error = Thrift.TApplicationException.exception(type: :internal_error, message: "Server error: #{formatted_exception}")
          {:server_error, error}
      end
    end
    def(handle_thrift("puts_io", binary_data, handler_module)) do
      case(Elixir.Thrift.Generated.ProperlyNested.PutsIoArgs.BinaryProtocol.deserialize(binary_data)) do
        {%Thrift.Generated.ProperlyNested.PutsIoArgs{printable: printable}, ""} ->
          try do
            rsp = handler_module.puts_io(printable)
            (
              _ = rsp
              :noreply
            )
          rescue
            []
          catch
            kind, reason ->
              formatted_exception = Exception.format(kind, reason, System.stacktrace())
              Logger.error("Exception not defined in thrift spec was thrown: #{formatted_exception}")
              error = Thrift.TApplicationException.exception(type: :internal_error, message: "Server error: #{formatted_exception}")
              {:server_error, error}
          end
        {_, extra} ->
          raise(Thrift.TApplicationException, type: :protocol_error, message: "Could not decode #{inspect(extra)}")
      end
    end
  end
end