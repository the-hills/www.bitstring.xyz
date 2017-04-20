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
config :bitstring, Bitstring.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LosfBWCOrtOfNF5VyJb8x7+nhAlbeuIXHW0IQj5i4K1a6rcn2WPOQDgsInXak3sE",
  render_errors: [view: Bitstring.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bitstring.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
