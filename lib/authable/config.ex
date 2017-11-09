defmodule Authable.Config do
  @moduledoc """
  Authable lib config module
  """

  alias Authable.Authorization.App, as: AppAuthorization

  def repo,
    do: Application.get_env(:authable, :repo)

  def scopes,
    do: Application.get_env(:authable, :scopes)

  def app_scopes,
    do: Enum.join(scopes(), ",")

  def grant_types,
    do: Application.get_env(:authable, :grant_types)

  def auth_strategies,
    do: Application.get_env(:authable, :auth_strategies)

  def header_auth,
    do: Map.get(auth_strategies(), :headers)

  def query_params_auth,
    do: Map.get(auth_strategies(), :query_params)

  def session_auth,
    do: Map.get(auth_strategies(), :sessions)

  def expires_in,
    do: Application.get_env(:authable, :expires_in)

  def renderer,
    do: Application.get_env(:authable, :renderer)

  def app_authorization,
    do: Application.get_env(:authable, :app_authorization, AppAuthorization)

  def token_store,
    do: Application.get_env(:authable, :token_store)

  def client,
    do: Application.get_env(:authable, :client)

  def app,
    do: Application.get_env(:authable, :app)

  def resource_owner,
    do: Application.get_env(:authable, :resource_owner)

end
