defmodule Empex.Author do
  use Empex.Web, :model

  schema "authors" do
    field :first_name, :string
    field :last_name, :string
    field :username, :string
    field :email, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:first_name, :last_name, :username, :email])
    |> validate_required([:first_name, :last_name, :username, :email])
  end
end
