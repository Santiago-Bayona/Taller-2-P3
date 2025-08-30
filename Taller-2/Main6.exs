defmodule Main6 do
  @moduledoc """
  Módulo para el cálculo de tarifas de envío.
  """

  @doc """
  Función principal del módulo.
  """
  def main() do
    mensaje()
  end

  @doc """
  Función para obtener el nombre del usuario.
  """
  def nombre() do
    "Ingrese su nombre: "
    |> Util.input(:string)
  end

  @doc """
  Función para obtener el peso del paquete.
  """
  def peso_paquete() do
    "Ingrese el peso del paquete: "
    |> Util.input(:float)
  end

  @doc """
  Función para obtener el tipo de paquete y calcular su tarifa.
  """
 def tipo() do
  peso = peso_paquete()
  x = "Ingrese el tipo de paquete (Economico, Express, Internacional): "
  |> Util.input(:string)

  if x == "Economico" do
    5000 * peso
  else
    if x == "Express" do
      8000 * peso
    else
      if x == "Internacional" do
        if peso <= 5 do
          15000 * peso
        else
          12000 * peso
        end
      else
        "Tipo de paquete no válido"
        |> Util.show_message()
      end
    end
  end
end

@doc """
Función para mostrar el mensaje final al usuario.
"""
def mensaje() do
    nombre = nombre()
    tarifa = tipo()

    "Hola #{nombre}, el valor a pagar por el envío es: #{tarifa}"
    |> Util.show_message()
  end



end

Main6.main()
