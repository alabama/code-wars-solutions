defmodule ProperlyNested.ServiceHandler do
  @moduledoc false
  @behaviour Thrift.Generated.ProperlyNested.Handler
  alias NestedString
  alias Thrift.Generated.Work

  @impl true
  def ping() do
    IO.puts("pong")
  end

  @impl true
  def puts_io(printable) do
    IO.puts(printable)
  end

  @impl true
  def is_properly_nested(%Work{} = work) do
    try do
      NestedString.is_properly_nested(work.string_to_check)
    rescue e ->
      IO.inspect(e)
      raise Thrift.Generated.InvalidStringError
    end
  end

end
