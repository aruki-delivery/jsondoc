defmodule JSONDoc.Mixfile do
  use Mix.Project

  def project do
    [app: :jsondoc,
      version: "0.7.1",
      language: :erlang,
      erlc_options: [{:platform_define, "R1(1|2|3|4|5|6)", 'JSONDOC_NO_MAPS'}, :debug_info],
      deps: deps(Mix.env()),
      description: "Erlang service handling json documents and templates",
      package: package(),
      source_url: "https://github.com/aruki-delivery/jsondoc",
      homepage_url: "https://hex.pm/packages/jsondoc"]
  end

  defp deps(_) do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

  def package do
    [ maintainers: ["cblage"],
      licenses: ["Apache License 2.0"],
      links: %{"GitHub" => "https://github.com/aruki-delivery/jsondoc" } ]
  end
end