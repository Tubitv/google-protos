defmodule GoogleProtos.MixProject do
  use Mix.Project

  def project do
    [
      app: :google_protos,
      name: "Google Protos",
      version: "0.3.1",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Protos by Google",
      package: package()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:protobuf, "~> 0.11.1", organization: "tubitv"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      organization: "tubitv",
      maintainers: "",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/Tubitv/google-protos"},
      files: ~w(mix.exs README.md lib LICENSE)
    ]
  end
end
