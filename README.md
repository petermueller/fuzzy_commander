# FuzzyCommander

A customizable fuzzy-search-style command palette. Think Cmd+P/Ctrl+P in your favorite editor/IDE.
It's intent is to be used in Elixir-based applications that accept input from users and present results back (e.g. Phoenix, or a CLI).

## Status: Proof of Concept
This is currently in a very early stage. Although I've been thinking about this for a while and have plans to build it out, it is currently not in a usable/reliable (or potentially even working) state.

In the future I'm thinking I will split this into separate libraries to support the different use-cases I can think of (Phoenix LiveView, non-LiveView Websockets, stateful HTTP calls, CLI), and may also make a corresponding Javascript library (or hook it up to an existing one)

If you have ideas for features you'd like to see, or can see problems that I'm missing I greatly appreciate Issues

## Plans for the future

  1. "dumb" example LiveView (not a library yet)
     - static text content
     - render-only (i.e. no client-side commands)
  2. 0-arity commands
     - e.g. UUID generation
  3. Javascript-based display
     - LiveView Hooks and/or Phoenix Channels
     - hotkeys.js, or something manual, for "selection"/navigation/traversal keys (Cmd-P, Enter, Tab, Right/Left)
     - fuzzy-matching still on server
  4. n-arity commands on server-only
    - not from user input
    - results still output-only (NO redirect_to/sign_out)
    - passing conn/socket/Map-context/Map-context+fn(command_result)
    - e.g. "Paragraph of Lorem Ipsum" -> lorem_ipsum(length: :paragraph),
  5. client-side input to n-arity commands

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `fuzzy_commander` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fuzzy_commander, "~> 0.0.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/fuzzy_commander](https://hexdocs.pm/fuzzy_commander).
