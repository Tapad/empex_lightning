defmodule Empex.Router do
  use Empex.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Empex do
    pipe_through :api
  end
end
