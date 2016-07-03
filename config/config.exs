# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_101,
  ecto_repos: [Phoenix101.Repo]

# Configures the endpoint
config :phoenix_101, Phoenix101.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "D1WpTQQWDlOlIasQmZQ3tKNDVKhGCACoNdCLjWtrMqJqCvTzp+KrSz/jalkw2Bu0",
  render_errors: [view: Phoenix101.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenix101.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
