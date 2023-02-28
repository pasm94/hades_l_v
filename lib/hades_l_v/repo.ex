defmodule HadesLV.Repo do
  use Ecto.Repo,
    otp_app: :hades_l_v,
    adapter: Ecto.Adapters.Postgres
end
