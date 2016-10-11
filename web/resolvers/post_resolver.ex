defmodule Empex.PostResolver do
  alias Empex.Post

  def all(_args, _info) do
    {:ok, Empex.Repo.all(Post)}
  end
end
