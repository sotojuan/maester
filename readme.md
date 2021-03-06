# maester

> An API of Ice and Fire client for Elixir

[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
  
This project is unmaintained: I have no interest in maintaining it any more. If you want to take over, let me know at juan@juansoto.me.

## Install

In your `mix.exs`:

```elixir
defp deps do
  [
    { :maester, "~> 1.0.0" }
  ]
end
```

Then run `mix deps.get`.

## Usage

Check out the fancy Hexdocs [here](https://hexdocs.pm/maester/).

First of all, add Maester to the `application` function in your `mix.exs`:

```elixir
def application do
  [applications: [:logger, :maester]]
end
```

You got three modules under `Maester`: `Book`, `Character`, `House`, and `Request`. The first three allow you get the respective resources with a `by_id` and `all` functions. `all` takes it optional filters. See the [API documentation](https://anapioficeandfire.com/Documentation) for possible filters and pass them in as a map.

`Request` exposes a `make` function that allows you to write any query and a filter map. The other modules use it under the hood.

In case of an error, you will get an `{:error, message}` tuple.

For pagination, you can use the API's [pagination options](https://anapioficeandfire.com/Documentation#pagination) as filters, though if you need to find a specific item it's better to use the other filters.

## Examples

Getting all characters who are female:

```elixir
Maester.Character.all(%{:gender => "female"})
```

Getting a house by id:

```elixir
Maester.House.by_id(378)
```

Getting the second page of characters:

```elixir
Maester.Character.all(%{:page => 2})
```

You get the idea.

## License

MIT © [Juan Soto](http://juansoto.me)
