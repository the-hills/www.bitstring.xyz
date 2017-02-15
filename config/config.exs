# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bitstring,
  ecto_repos: [Bitstring.Repo]

# Configures the endpoint
config :bitstring, Bitstring.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "W2exSxbKWWak6if4Uwx0NE2dmE2PhdsBU51+czKLC1oqIwktyDYpVyp4pm1i/yl5",
  render_errors: [view: Bitstring.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bitstring.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure ex_admin
config :ex_admin,
  repo: Bitstring.Repo,
  module: Bitstring,
  modules: [
    Bitstring.ExAdmin.Dashboard,
  ]


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
