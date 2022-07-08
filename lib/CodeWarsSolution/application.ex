defmodule CodeWarsSolution.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
#    port = Application.get_env(:code_wars, :port, 9090)

#    children = [
#    ]

    opts = [strategy: :one_for_one, name: CodeWarsSolution.Supervisor]
    Supervisor.start_link([], opts)
  end

#  defp server_child_spec(_port) do
#    %{
#      id: Server,
#      start: {Server, :start_link, [CodeWarsSolution.ServiceHandler, port]},
#      type: :supervisor
#    }
#  end
end
