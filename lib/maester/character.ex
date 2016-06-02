defmodule Maester.Character do
  @moduledoc """
  Handles the request of characters
  """
  
  alias Maester.Request, as: Request

  @doc """
  Gets all characters
  """
  def all do
    Request.make("characters")
  end

  @doc """
  Gets a character by id
  """
  def by_id(id) do
    Request.make("characters/#{id}")
  end
end