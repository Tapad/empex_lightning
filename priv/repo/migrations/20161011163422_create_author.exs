defmodule Empex.Repo.Migrations.CreateAuthor do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :first_name, :string
      add :last_name, :string
      add :username, :string
      add :email, :string

      timestamps()
    end

  end
end
