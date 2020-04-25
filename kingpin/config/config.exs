# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kingpin,
  ecto_repos: [Kingpin.Repo]

# Configures the endpoint
config :kingpin, KingpinWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "80belpITookJRfPjTw87Th9PtCYCuCiXbwGGj2f6+h2L84QFQt0nL7qGW0RwKfZH",
  render_errors: [view: KingpinWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Kingpin.PubSub,
  live_view: [signing_salt: "5vYvS0dU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
