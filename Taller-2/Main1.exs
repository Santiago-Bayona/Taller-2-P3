defmodule Main do
  @moduledoc """
  Módulo para el Cálculo de Consumo de Combustible de un vehiculo.
  """

  @doc """
  Función principal del módulo.
  """
  def main() do
    nombre = pedir_texto()
    kilometros = pedir_kilometros()
    gasolina = pedir_litros()
    rendimiento_vehiculo(nombre, kilometros, gasolina)
  end

  @doc """
  Función para obtener el nombre del usuario.
  """

  def pedir_texto() do
    nombre = Util.input("Ingrese su nombre: ", :string)
  end

  @doc """
  Función para obtener la distancia recorrida en kilómetros.
  """
  def pedir_kilometros() do
    numero = Util.input("Ingrese la distancia recorrida en kilómetros: ", :float)
    Util.show_message("Número de KM recorridos: #{numero}")
    numero
  end

  @doc """
  Función para obtener la cantidad de combustible consumido en litros.
  """
  def pedir_litros() do
    numero1 = Util.input("Ingrese la cantidad de combustible consumido en litros: ", :float)
    Util.show_message("Gasolina consumida en Litros: #{numero1}")
    numero1
  end

  @doc """
  Función para Calcular el rendimiento del vehículo en km/L.
  """

  def rendimiento_vehiculo(nombre, kilometros, gasolina) do
    rendimiento = kilometros / gasolina

    "El rendimiento del vehiculo es: #{rendimiento} "
    rendimiento_str = :io_lib.format("~.2f", [rendimiento]) |> to_string()
    Util.show_message("Conductor: #{nombre}")
    Util.show_message("El rendimiento del vehículo es: #{rendimiento_str} km/L")
  end
end

Main.main()
