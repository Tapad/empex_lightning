defmodule Empex.CommentResolver do
  alias Empex.Comment

  def all(_args, _info) do
    {:ok, Empex.Repo.all(Comment)}
  end
end
