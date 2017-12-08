defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [
      app: :issues,
      version: "0.1.0",
      name: "Issues",
      source_url: "https://github.com/mkreyman/issues",
      elixir: "~> 1.5",
      escript: escript_config(),
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison, :jsx, :oauth2]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      { :httpoison, "~> 0.4" },
      { :jsx, "~> 2.0" },
      { :oauth2, "~> 0.9" }, # https://github.com/scrogson/oauth2
      { :poison, "~> 1.3 or ~> 2.0" },
      { :ex_doc, github: "elixir-lang/ex_doc" }
    ]
  end

  defp escript_config do
    [ main_module: Issues.CLI ]
  end
end
