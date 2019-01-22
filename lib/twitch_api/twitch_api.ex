defmodule TwitchApi do
  use HTTPoison.Base

  def process_request_url(url) do
    "https://" <> url
  end

  def process_response_body(body) do
    Jason.decode!(body)
  end
end