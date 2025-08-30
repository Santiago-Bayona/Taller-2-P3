defmodule Main2 do
  @moduledoc """
  Modulo para calcular el valor final de un libro.
  """
  @doc """
  Función principal del módulo.
  """
  def main do
    valor_final()
  end

  @doc """
  Función para obtener el título del libro.
  """
  def tituloLibro() do
    "Ingrese el Titulo del libro: "
    |> Util.input(:string)
  end

  @doc """
  Función para obtener la cantidad de libros.
  """
  def cantidad_libros() do
    "Ingrese la cantidad de libros: "
    |> Util.input(:integer)
  end

  @doc """
  Función para obtener el precio del libro.
  """
  def precio() do
    "Ingrese el precio del libro: "
    |> Util.input(:float)
  end

  @doc """
  Función para calcular el valor final del libro.
  """
  def valor_final() do
    nombre = tituloLibro()
    cantidad = cantidad_libros()
    price = precio()

    res = cantidad * price

    "El libro de nombre #{nombre}, que tiene #{cantidad} ejemplares, tiene un precio final de: #{res}"
    |> Util.show_message()
  end
end

Main2.main()
