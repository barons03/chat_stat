# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chat_stat,
  ecto_repos: [ChatStat.Repo]

# Configures the endpoint
config :chat_stat, ChatStatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "C+RfPGV6VbYWLZ/JeH2mL85ygHTtVpT+cXrtc+muHzx01+A/kvb7vY4mtklGMXo6",
  render_errors: [view: ChatStatWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ChatStat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
