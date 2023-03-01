defmodule HadesLVWeb.PageController do
  use HadesLVWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def tailwind(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :tailwind, layout: false)
  end
end
