defmodule BitstringWeb.PageController do
  use BitstringWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
