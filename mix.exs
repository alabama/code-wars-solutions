defmodule NestedStringProblem.MixProject do
  use Mix.Project

  def project do
    [
      app: :properly_nested,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      compilers: [:thrift | Mix.compilers],
      thrift: [
        files: Path.wildcard("thrift/**/*.thrift")
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ProperlyNested.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:thrift, github: "pinterest/elixir-thrift"},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
