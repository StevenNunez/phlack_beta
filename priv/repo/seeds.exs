# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhlackBeta.Repo.insert!(%PhlackBeta.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

PhlackBeta.Repo.delete_all PhlackBeta.User

PhlackBeta.User.changeset(%PhlackBeta.User{}, %{name: "Bobby", email: "bob@example.com", password: "password", password_confirmation: "password"})
|> PhlackBeta.Repo.insert!
