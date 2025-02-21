defmodule Insta.Repo do
  use Ecto.Repo,
    otp_app: :insta,
    adapter: Ecto.Adapters.Postgres
end
