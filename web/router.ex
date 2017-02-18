defmodule Bitstring.Router do
  use Bitstring.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Bitstring do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/hello", HelloController, :index
    get "/mydouban", DoubanController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", Bitstring do
    pipe_through :api
  end
end

