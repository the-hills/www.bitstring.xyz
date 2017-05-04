defmodule Bitstring.Web.PageController do
  use Bitstring.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
