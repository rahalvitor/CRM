defmodule Crm.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      CrmWeb.Telemetry,
      # Start the Ecto repository
      Crm.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Crm.PubSub},
      # Start Finch
      {Finch, name: Crm.Finch},
      # Start the Endpoint (http/https)
      CrmWeb.Endpoint
      # Start a worker by calling: Crm.Worker.start_link(arg)
      # {Crm.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Crm.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CrmWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
