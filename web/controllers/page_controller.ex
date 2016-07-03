defmodule Phoenix101.PageController do
  use Phoenix101.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
