defmodule Util do
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  def input(message, :string) do
      System.cmd("java", ["-cp", ".", "Mensaje", "input", message])
      |> elem(0)
      |> String.trim()
  end

  def input(message, :integer) do
    try do
      message
      |>input(:string)
      |> String.to_integer()
    rescue
      ArgumentError ->
        IO.puts(:error, "Error: el valor ingresado no es válido I")

        message
        |> input(:integer)
    end
  end

  def input(message, :float) do
    try do
      message
      |> input(:string)
      |> String.to_float()
    rescue
      ArgumentError ->
        IO.puts(:error, "Error: el valor ingresado no es válido f")
        message
        |> input(:float)
    end
  end
end
