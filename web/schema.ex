defmodule Empex.Schema do
  use Absinthe.Schema
  import_types Empex.Schema.Types

  query do
    field :posts, list_of(:post) do
      arg :title, :string
      arg :body, :string
      arg :author, :author
      resolve &Empex.PostResolver.all/2
    end

    field :post, type: :post do
      arg :id, non_null(:id)
      resolve &Empex.PostResolver.find/2
    end

    field :authors, list_of(:author) do
      arg :first_name, :string
      arg :last_name, :string
      arg :username, :string
      arg :email, :string
      resolve &Empex.AuthorResolver.all/2
    end

    field :author, type: :author do
      arg :id, non_null(:id)
      resolve &Empex.AuthorResolver.find_by_id/2
    end

    field :comments, list_of(:comment) do
      resolve &Empex.CommentResolver.all/2
    end

    field :comment, type: :comment do
      arg :id, non_null(:id)
      resolve &Empex.CommentResolver.find/2
    end

    mutation do
      field :author, type: :author do
        arg :first_name, non_null(:string)
        arg :last_name, non_null(:string)
        arg :username, non_null(:string)
        arg :email, :string

        resolve &Empex.AuthorResolver.create/2
      end

      field :post, type: :post do
        arg :title, non_null(:string)
        arg :body, non_null(:string)

        resolve &Empex.PostResolver.create/2
      end

      field :comment, type: :comment do
        arg :text, non_null(:string)

        resolve &Empex.CommentResolver.create/2
      end
    end
  end
end
