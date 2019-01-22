defmodule ChatStat.Repo do
  use Ecto.Repo,
    otp_app: :chat_stat,
    adapter: Ecto.Adapters.Postgres
end
