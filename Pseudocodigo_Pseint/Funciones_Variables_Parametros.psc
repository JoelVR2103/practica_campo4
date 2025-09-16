Algoritmo Funciones_Variables_Parametros
	Definir opcion Como Entero
	Definir area, ancho, alto, baseT, alturaT, lado, radio Como Real

	Escribir "----- C�lculo de �reas -----"
	Escribir "Seleccione la figura geom�trica:"
	Escribir "1. Rect�ngulo"
	Escribir "2. Tri�ngulo"
	Escribir "3. Cuadrado"
	Escribir "4. C�rculo"
	Escribir "Opci�n: "
	Leer opcion

	area = 0

	Segun opcion Hacer
		1: 
			Escribir "Ingrese el ancho: "
			Leer ancho
			Escribir "Ingrese el alto: "
			Leer alto
			area = CalcularAreaRectangulo(ancho, alto)
			Escribir "El �rea del rect�ngulo es: ", area
		2: 
			Escribir "Ingrese la base: "
			Leer baseT
			Escribir "Ingrese la altura: "
			Leer alturaT
			area = CalcularAreaTriangulo(baseT, alturaT)
			Escribir "El �rea del tri�ngulo es: ", area
		3: 
			Escribir "Ingrese el lado: "
			Leer lado
			area = CalcularAreaCuadrado(lado)
			Escribir "El �rea del cuadrado es: ", area
		4: 
			Escribir "Ingrese el radio: "
			Leer radio
			area = CalcularAreaCirculo(radio)
			Escribir "El �rea del c�rculo es: ", area
		De Otro Modo:
			Escribir "Opci�n inv�lida. Debe seleccionar entre 1 y 4."
	FinSegun
FinAlgoritmo

	// Calculo del �rea de un rect�ngulo
	Funcion area = CalcularAreaRectangulo(ancho, alto)
		Definir area Como Real
		area = ancho * alto
	FinFuncion

	// Calculo del �rea de un tri�ngulo
	Funcion area <- CalcularAreaTriangulo(baseT, alturaT)
		Definir area Como Real
		area = (baseT * alturaT) / 2
	FinFuncion

	// Calculo del �rea de un cuadrado
	Funcion area <- CalcularAreaCuadrado(lado)
		Definir area Como Real
		area = lado * lado
	FinFuncion

	// Calculo del �rea de un c�rculo
	Funcion area = CalcularAreaCirculo(radio)
		Definir area Como Real
		area = PI * radio^2
	FinFuncion