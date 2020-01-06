IEx.configure(
  inspect: [pretty: true, limit: :infinity],
  colors: [
    enabled: true,
    eval_result: [:cyan, :bright],
    eval_error: [[:red, :bright, "\n▶▶▶\n"]],
    eval_info: [:yellow, :bright]
  ],
  default_prompt:
    [
      # cursor ⇒ column 1
      "\e[G",
      :blue,
      "%prefix",
      :yellow,
      "|",
      :blue,
      "%counter",
      " ",
      :yellow,
      "▶",
      :reset
    ]
    |> IO.ANSI.format()
    |> IO.chardata_to_string()
)

Application.put_env(:elixir, :ansi_enabled, true)
