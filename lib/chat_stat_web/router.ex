defmodule ChatStatWeb.Router do
  use ChatStatWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ChatStatWeb do
    pipe_through :api
  end
end
