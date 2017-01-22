defmodule Bag.DigitalOcean.Images do
  @moduledoc """
  Bag for `GET https://api.digitalocean.com/v2/images`.
  """
  
  defstruct [
    :images,
    :links,
    :meta]
end
