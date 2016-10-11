# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :empex,
  ecto_repos: [Empex.Repo]

# Configures the endpoint
config :empex, Empex.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JTD+SzuvL5xxGlQ/EHo5vCCwSxp732ydVrr9ISTqviLFHimYv07wZyIuU1VU9Nr/",
  render_errors: [view: Empex.ErrorView, accepts: ~w(json)],
  pubsub: [name: Empex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
