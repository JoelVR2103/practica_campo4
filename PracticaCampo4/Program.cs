using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PracticaCampo4
{
    class Program
    {
        static void Main(string[] args)
        {
            // Muestra el título y el menú de opciones
            Console.WriteLine("----- Cálculo de Áreas -----");
            Console.WriteLine("Seleccione la figura geométrica:");
            Console.WriteLine("1. Rectángulo");
            Console.WriteLine("2. Triángulo");
            Console.WriteLine("3. Cuadrado");
            Console.WriteLine("4. Círculo");
            Console.Write("Opción: ");

            int opcion;
            // Valida la entrada del usuario
            if (!int.TryParse(Console.ReadLine(), out opcion))
            {
                Console.WriteLine("Entrada inválida. Debe ingresar un número.");
                return;
            }

            double area = 0;

            // Procesa la opción seleccionada
            switch (opcion)
            {
                case 1: // Rectángulo
                    Console.Write("Ingrese el ancho: ");
                    double ancho = Convert.ToDouble(Console.ReadLine());
                    Console.Write("Ingrese el alto: ");
                    double alto = Convert.ToDouble(Console.ReadLine());
                    area = CalcularAreaRectangulo(ancho, alto);
                    Console.WriteLine($"El área del rectángulo es: {area}");
                    break;

                case 2: // Triángulo
                    Console.Write("Ingrese la base: ");
                    double baseT = Convert.ToDouble(Console.ReadLine());
                    Console.Write("Ingrese la altura: ");
                    double alturaT = Convert.ToDouble(Console.ReadLine());
                    area = CalcularAreaTriangulo(baseT, alturaT);
                    Console.WriteLine($"El área del triángulo es: {area}");
                    break;

                case 3: // Cuadrado
                    Console.Write("Ingrese el lado: ");
                    double lado = Convert.ToDouble(Console.ReadLine());
                    area = CalcularAreaCuadrado(lado);
                    Console.WriteLine($"El área del cuadrado es: {area}");
                    break;

                case 4: // Círculo
                    Console.Write("Ingrese el radio: ");
                    double radio = Convert.ToDouble(Console.ReadLine());
                    area = CalcularAreaCirculo(radio);
                    Console.WriteLine($"El área del círculo es: {area}");
                    break;

                default:
                    Console.WriteLine("Opción inválida. Debe seleccionar entre 1 y 4.");
                    break;
            }
        }

        /// Calcula el área de un rectángulo.
        static double CalcularAreaRectangulo(double ancho, double alto)
        {
            double area = ancho * alto;
            return area;
        }

        /// Calcula el área de un triángulo.
        static double CalcularAreaTriangulo(double baseT, double alturaT)
        {
            double area = (baseT * alturaT) / 2;
            return area;
        }

        /// Calcula el área de un cuadrado.
        static double CalcularAreaCuadrado(double lado)
        {
            double area = lado * lado;
            return area;
        }

        /// Calcula el área de un círculo.
        static double CalcularAreaCirculo(double radio)
        {
            double area = Math.PI * Math.Pow(radio, 2);
            return area;
        }
    }
}
