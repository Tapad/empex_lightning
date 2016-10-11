defmodule Empex.Schema do
  use Absinthe.Schema
  import_types Empex.Schema.Types

  query do
    field :posts, list_of(:post) do
      resolve &Empex.PostResolver.all/2
    end

    field :authors, list_of(:author) do
      resolve &Empex.AuthorResolver.all/2
    end

    field :comments, list_of(:comment) do
      resolve &Empex.CommentResolver.all/2
    end
  end
end
