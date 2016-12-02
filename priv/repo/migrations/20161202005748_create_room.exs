defmodule PhlackBeta.Repo.Migrations.CreateRoom do
  use Ecto.Migration

  def change do
    create table(:rooms) do
      add :name, :string
      add :slug, :string
      add :type, :string

      timestamps()
    end
    create index(:rooms, [:slug])
    create index(:rooms, [:type])
  end
end
