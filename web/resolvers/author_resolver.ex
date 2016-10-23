defmodule Empex.AuthorResolver do
  alias Empex.Author
  import Ecto.Query, only: [from: 2]

  def all(args, _info) do
    query = from a in Author, preload: [:comment, :post]

    wheres = Enum.reduce(
      args,
      query,
      fn({key, value}, query) -> from a in query, where: ^[{key, value}] end
    )

    {:ok, Empex.Repo.all(wheres)}
  end

  def find_by_id(%{id: id}, _info) do
    case Empex.Repo.get(Author, id) do
      nil -> {:error, "Author id ${id} not found"}
      author -> {:ok, author}
    end
  end

  def create(args, _info) do
    %Author{}
    |> Author.changeset(args)
    |> Empex.Repo.insert
  end
end
