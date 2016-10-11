defmodule Empex.CommentResolver do
  alias Empex.Comment

  def all(_args, _info) do
    {:ok, Empex.Repo.all(Comment)}
  end

  def find(%{id: id}, _info) do
    case Empex.Repo.get(Comment, id) do
      nil -> {:error, "Comment id ${id} not found"}
      comment -> {:ok, comment}
    end
  end
end
