defmodule Socho.SMS.Adapters.Local do
  @moduledoc """
  Development SMS adapter. Logs messages instead of sending real SMS.

  Enabled by default in dev. Check your application logs to see OTP codes.
  """

  @behaviour Socho.SMS.Adapter

  require Logger

  @impl true
  def send_otp(to, body) do
    Logger.debug("[SMS Local] To: #{to} | #{body}")
    :ok
  end

  @impl true
  def send_forget_password(to, body) do
    Logger.debug("[SMS Local] To: #{to} | #{body}")
    :ok
  end
end
