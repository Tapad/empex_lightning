defmodule Empex.Comment do
  use Empex.Web, :model

  schema "comments" do
    field :text, :string
    belongs_to :post, Empex.Post
    belongs_to :author, Empex.Author

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:text])
    |> validate_required([:text])
  end
end
