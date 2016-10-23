defmodule Empex.Schema.Types do
  use Absinthe.Schema.Notation

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string
    field :inserted_at, :integer
    field :updated_at, :integer
    field :author, :author
    field :comment, list_of(:comment)
  end

  object :author do
    field :id, :id
    field :first_name, :string
    field :last_name, :string
    field :username, :string
    field :email, :string
    field :inserted_at, :integer
    field :post, list_of(:post)
    field :comment, list_of(:comment)
  end

  object :comment do
    field :id, :id
    field :text, :string
    field :inserted_at, :integer
    field :post, :post
    field :author, :author
  end
end
