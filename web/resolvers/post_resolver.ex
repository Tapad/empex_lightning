defmodule Empex.PostResolver do
  alias Empex.Post

  def all(_args, _info) do
    {:ok, Empex.Repo.all(Post)}
  end

  def find(%{id: id}, _info) do
    case Empex.Repo.get(Post, id) do
      nil -> {:error, "Post id ${id} not found"}
      post -> {:ok, post}
    end
  end
end
