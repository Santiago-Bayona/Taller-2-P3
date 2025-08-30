defmodule Main3 do
  @moduledoc """
  Módulo para la conversión de temperaturas.
  """

  @doc """
  Función principal del módulo.
  """
  def main() do
    conversor()
  end

  @doc """
  Función para obtener el nombre del usuario.
  """
  def nombre_usuario() do
    "Ingrese el nombre del usuario: "
    |> Util.input(:string)
  end

  @doc """
  Función para obtener la temperatura en grados Celsius.
  """
  def celcius() do
    "Ingrese la temperatura en grados Celsius: "
    |> Util.input(:float)
  end

  @doc """
  Función para realizar la conversión de temperaturas.
  """
  def conversor() do
    nombre = nombre_usuario()
    grados = celcius()


    farenheit= (grados * 9/5) + 32
    kelvin = grados + 273.1

    "Hola usuario #{nombre}, si la temperatura en celcius es #{grados}, en farenheit es #{farenheit} y en kelvin es #{kelvin}"
    |> Util.show_message()
  end

end

Main3.main()
