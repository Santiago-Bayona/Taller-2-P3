defmodule Main do
  @moduledoc """
  Modulo para el calculo de la tarifa de un pejae.
  """

  @doc """
  Funcion principal del modulo.
  """
  def main() do
    placa = pedir_placa()
    tipo_vehiculo = pedir_tipo_vehiculo()
    peso = pedir_peso()
    tarifa = asignar_tarifa(tipo_vehiculo, peso)
    mensaje = enviar_mensaje(placa, tipo_vehiculo, peso, tarifa)
  end

  @doc """
  Función para obtener la placa del vehiculo.
  """
  def pedir_placa() do
    placa = Util.input("Ingrese la placa del vehiculo: ", :string)
  end

  @doc """
  Función para obtener el tipo del vehiculo.
  """
  def pedir_tipo_vehiculo() do
    tipo_vehiculo = Util.input("Ingrese el tipo de vehiculo (carro, moto, camion): ", :string)
    validar_tipo(tipo_vehiculo)
  end

  @doc """
  Función que valida la entrada del tipo de vehiculo, si la entrada no corresponde a "carro, moto o camion, vuelve a preguntar que tipo de vehiculo.
  """

  defp validar_tipo("carro") do
    Util.show_message("Su vehiculo es de tipo: Carro")
    "carro"
  end

  defp validar_tipo("moto") do
    Util.show_message("Su vehiculo es de tipo: Moto")
    "moto"
  end

  defp validar_tipo("camion") do
    Util.show_message("Su vehiculo es de tipo: Camion")
    "camion"
  end

  defp validar_tipo(_otro) do
    IO.puts(
      "Incorrecto, el tipo de vehiuclo ingresado no es valido. Debe ser carro, moto o camion."
    )

    pedir_tipo_vehiculo()
  end

  @doc """
  Función para obtener el peso del vehiculo en toneladas.
  """

  def pedir_peso() do
    peso = Util.input("Ingrese el peso de su vehiculo en toneladas : ", :float)
  end

  @doc """
  Función para calcular la tarifa del peaje para cada tipo de vehiculo.
  """

  def asignar_tarifa(tipo_vehiculo, peso) do
    if tipo_vehiculo == "carro" do
      10000
    else
      if tipo_vehiculo == "moto" do
        5000
      else
        if tipo_vehiculo == "camion" do
          20000 + 2000 * peso
        else
          0
        end
      end
    end
  end

  @doc """
  Función que enviar un mensaje con la informacion del vehiculo y la tarifa final a pagar.
  """
  def enviar_mensaje(placa, tipo_vehiculo, peso, tarifa) do
    tarifa_int = round(tarifa)
    "La placa de final del vehiculo es: "
    Util.show_message("La placa de su vehiculo es: #{placa}")
    Util.show_message("Su vehiculo es de tipo: #{tipo_vehiculo}")
    Util.show_message("El peso de su vehiculo es: #{peso}")
    Util.show_message("#{tipo_vehiculo} con placas #{placa} debe pagar $#{tarifa_int}")
  end
end

Main.main()
