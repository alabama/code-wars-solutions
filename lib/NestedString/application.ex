defmodule ProperlyNested.Application do
  @moduledoc false

  use Application
  alias Thrift.Generated.ProperlyNested.Binary.Framed.Server

  def start(_type, _args) do
    port = Application.get_env(:properly_nested, :port, 9090)

    children = [
      server_child_spec(port)
    ]

    opts = [strategy: :one_for_one, name: ProperlyNested.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp server_child_spec(port) do
    %{
      id: Server,
      start: {Server, :start_link, [ProperlyNested.ServiceHandler, port]},
      type: :supervisor
    }
  end
end
