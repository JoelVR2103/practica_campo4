Algoritmo Funciones_Variables_Parametros
	Definir opcion Como Entero
	Definir area, ancho, alto, baseT, alturaT, lado, radio Como Real

	Escribir "----- Cálculo de Áreas -----"
	Escribir "Seleccione la figura geométrica:"
	Escribir "1. Rectángulo"
	Escribir "2. Triángulo"
	Escribir "3. Cuadrado"
	Escribir "4. Círculo"
	Escribir "Opción: "
	Leer opcion

	area = 0

	Segun opcion Hacer
		1: 
			Escribir "Ingrese el ancho: "
			Leer ancho
			Escribir "Ingrese el alto: "
			Leer alto
			area = CalcularAreaRectangulo(ancho, alto)
			Escribir "El área del rectángulo es: ", area
		2: 
			Escribir "Ingrese la base: "
			Leer baseT
			Escribir "Ingrese la altura: "
			Leer alturaT
			area = CalcularAreaTriangulo(baseT, alturaT)
			Escribir "El área del triángulo es: ", area
		3: 
			Escribir "Ingrese el lado: "
			Leer lado
			area = CalcularAreaCuadrado(lado)
			Escribir "El área del cuadrado es: ", area
		4: 
			Escribir "Ingrese el radio: "
			Leer radio
			area = CalcularAreaCirculo(radio)
			Escribir "El área del círculo es: ", area
		De Otro Modo:
			Escribir "Opción inválida. Debe seleccionar entre 1 y 4."
	FinSegun
FinAlgoritmo

	// Calculo del área de un rectángulo
	Funcion area = CalcularAreaRectangulo(ancho, alto)
		Definir area Como Real
		area = ancho * alto
	FinFuncion

	// Calculo del área de un triángulo
	Funcion area <- CalcularAreaTriangulo(baseT, alturaT)
		Definir area Como Real
		area = (baseT * alturaT) / 2
	FinFuncion

	// Calculo del área de un cuadrado
	Funcion area <- CalcularAreaCuadrado(lado)
		Definir area Como Real
		area = lado * lado
	FinFuncion

	// Calculo del área de un círculo
	Funcion area = CalcularAreaCirculo(radio)
		Definir area Como Real
		area = PI * radio^2
	FinFuncion