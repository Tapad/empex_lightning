defmodule Empex.PostResolver do
  alias Empex.Post
  import Ecto.Query, only: [from: 2]

  def all(args, _info) do
    query = from p in Post, preload: [:comment, :author]

    wheres = Enum.reduce(
      args,
      query,
      fn({key, value}, query) -> from a in query, where: ^[{key, value}] end
    )

    {:ok, Empex.Repo.all(wheres)}
  end

  def find(%{id: id}, _info) do
    case Empex.Repo.get(Post, id) do
      nil -> {:error, "Post id ${id} not found"}
      post -> {:ok, post}
    end
  end

  def create(args, _info) do
    %Post{}
    |> Post.changeset(args)
    |> Empex.Repo.insert
  end
end
