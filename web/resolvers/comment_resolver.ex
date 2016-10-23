defmodule Empex.CommentResolver do
  alias Empex.Comment
  import Ecto.Query, only: [from: 2]

  def all(args, _info) do
    query = from c in Comment, preload: [:post, :author]

    wheres = Enum.reduce(
      args,
      query,
      fn({key, value}, query) -> from a in query, where: ^[{key, value}] end
    )

    {:ok, Empex.Repo.all(wheres)}
  end

  def find(%{id: id}, _info) do
    case Empex.Repo.get(Comment, id) do
      nil -> {:error, "Comment id ${id} not found"}
      comment -> {:ok, comment}
    end
  end

  def create(args, _info) do
    %Comment{}
    |> Comment.changeset(args)
    |> Empex.Repo.insert
  end
end
