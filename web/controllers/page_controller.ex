defmodule PhlackBeta.PageController do
  use PhlackBeta.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
