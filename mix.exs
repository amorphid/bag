defmodule Bag.Mixfile do
  use Mix.Project

  def application() do
    [
      extra_applications: extra_applications()
    ]
  end

  def project() do
    [
      app:              :bag,
      build_embedded:   Mix.env == :prod,
      deps:             deps(),
      description:      description(),
      elixir:           "~> 1.4",
      package:          package(),
      start_permanent:  Mix.env == :prod,
      version:          version()
    ]
  end

  defp deps() do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description() do
    """
    A collection of structured data bags, in the form of structs.
    """
  end

  defp extra_applications() do
    [
      :logger
    ]
  end

  defp licenses() do
    for license <- ["LICENSE.md"] do
      File.stream!(license)
      |> Enum.at(0)
      |> String.trim()
    end
  end

  defp links() do
    %{
      "GitHub" => "https://github.com/amorphid/bag-elixir"
    }
  end

  defp maintainers() do
    [
      "Michael Pope"
    ]
  end

  defp package() do
    [
      licenses:    licenses(),
      links:       links(),
      maintainers: maintainers()
    ]
  end

  def version() do
    File.stream!("VERSION.txt")
    |> Enum.at(0)
    |> String.trim()
  end
end
