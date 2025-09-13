Funcion promedioFinal <- PedirNotas
	Definir  indice , registroNotas Como real
	Definir notaIngresada, sumaDeNotas Como Real
	Dimension registroNotas[3]
	sumaDeNotas <- 0
	Para  indice <-  1 Hasta 3 Con Paso 1
		Escribir " ingrese la nota por favor "
		Leer notaIngresada
		sumaDeNotas <- sumaDeNotas + notaIngresada
		registroNotas[indice] <- notaIngresada
	FinPara
	promedioFinal <- sumaDeNotas / 3
FinFuncion

Funcion promedioCalculado <- CalcularPromedio(promedioFinal)
    Definir promedioCalculado Como Real
    promedioCalculado <- promedioFinal
FinFuncion

SubProceso MostrarResultado(promedioCalculado)
    
    Escribir "El promedio de las 3 notas es: ", promedioCalculado
	
FinSubProceso

Algoritmo PromedioNotas
	Definir  promedioCalculado, promedioFinal Como Real
	Definir registroNotas, indice Como Real
	
	Repetir
		
		Escribir "       MENÚ"
		Escribir "1. Ingresar notas y calcular promedio"
		Escribir "2. Mostrar ultimo promedio"
		Escribir "3. Salir"
		Escribir "Elija una opcion: "
		Leer opcionMenu
		
		Segun opcionMenu Hacer
			1:
				promedioFinal <- PedirNotas
				promedioCalculado <- CalcularPromedio(promedioFinal)
				MostrarResultado(promedioCalculado)
			2:
				MostrarResultado(promedioCalculado)
			3:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opcion no valida, intente de nuevo."
		FinSegun
	Hasta Que opcionMenu = 3
	
	promedioFinal <- PedirNotas
	
	promedioCalculado <- CalcularPromedio(promedioFinal)
	
	MostrarResultado(promedioCalculado)
FinAlgoritmo