defmodule Empex.AuthorResolver do
  alias Empex.Author

  def all(_args, _info) do
    {:ok, Empex.Repo.all(Author)}
  end
end
