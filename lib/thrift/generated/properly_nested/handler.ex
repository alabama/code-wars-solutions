defmodule(Thrift.Generated.ProperlyNested.Handler) do
  @moduledoc(false)
  (
    @callback(is_properly_nested(w :: %Thrift.Generated.Work{}) :: boolean())
    @callback(ping() :: no_return())
    @callback(puts_io(printable :: String.t()) :: no_return())
  )
end