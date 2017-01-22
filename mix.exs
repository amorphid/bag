defmodule Bag.Mixfile do
  use Mix.Project

  def project() do
    [
      app:              :hoover,
      deps:             deps(),
      elixir:           "~> 1.4",
      build_embedded:   Mix.env == :prod,
      start_permanent:  Mix.env == :prod,
      version:          "0.1.0"
    ]
  end

  def application do
    [
      extra_applications: extra_applications()
    ]
  end

  defp deps do
    []
  end

  defp extra_applications() do
    [
      :logger
    ]
  end
end
