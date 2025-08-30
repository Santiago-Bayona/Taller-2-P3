defmodule Main4 do
  @moduledoc """
  Módulo para el cálculo del salario real de un trabajador.
  """

@doc """
Función principal del módulo.
"""
  def main do
    calcular_salario_real()
  end

  @doc """
  Función para obtener el nombre del usuario.
  """
  def nombre() do
    "Ingrese su nombre: "
    |> Util.input(:string)
  end

  @doc """
  Función para obtener el salario base del usuario.
  """
  def salario_base() do
    "Ingrese su salario base: "
    |> Util.input(:float)
  end

  @doc """
  Función para obtener las horas extras trabajadas por el usuario.
  """
  def horas_extras() do
    "Ingrese las horas extras que trabajo: "
    |> Util.input(:integer)
  end

  @doc """
  Función para calcular el salario real del usuario.
  """
  def calcular_salario_real() do
    nombre = nombre()
    salario = salario_base()
    extras = horas_extras()

    valor_hora = salario / 160
    valor_hora_extra= valor_hora * 1.5
    salario_real = salario + ( extras * valor_hora_extra)

    "Hola #{nombre}, tu salario real es: #{salario_real}"
    |> Util.show_message()
  end

end

Main4.main()
