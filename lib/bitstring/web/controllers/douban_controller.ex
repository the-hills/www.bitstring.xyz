defmodule Bitstring.DoubanController do
  use Bitstring.Web, :controller

  def index(conn, _params) do
    render conn, "douban.html"
  end
end
