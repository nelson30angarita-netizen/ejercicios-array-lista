Funcion ingresosTotales <- PedirIngresos
    Definir ingresosTotales Como Real
    Escribir "Ingrese los ingresos: "
    Leer ingresosTotales
FinFuncion

Funcion gastosTotales <- PedirGastos
    Definir gastosTotales Como Real
	Dimension registroGastos[1]
	para indice <- 1 hasta 1 con paso 1 hacer
		Escribir "Ingrese los gastos: "
		Leer gastosTotales
		registroGastos[1] <- gastosTotales
	FinPara
	
FinFuncion

Funcion gananciaNeta <- CalcularGanancia(ingresos, gastos)
    Definir gananciaNeta Como Real
    gananciaNeta <- ingresos - gastos
FinFuncion

SubProceso MostrarResultado(ganancia)
    
    Escribir "La ganancia neta es: $", ganancia
	
FinSubProceso

Algoritmo Ganancia_Neta
    Definir ingresosTotales, gastosTotales, gananciaNeta Como Real
    
    Definir  registroGastos , indice Como Real
	
	
	
	Repetir
        Escribir "1. Ingresar ingresos"
        Escribir "2. Ingresar gastos"
        Escribir "3. Calcular ganancia neta"
        Escribir "4. Salir"
        Escribir "Elija una opcion: "
        Leer opcion
        
		Segun opcion Hacer
			1:
				ingresosTotales <- PedirIngresos
			2:
				gastosTotales <- PedirGastos
			3:
				gananciaNeta <- CalcularGanancia(ingresosTotales, gastosTotales)
				MostrarResultado(gananciaNeta)
			4:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción no valida, intente de nuevo."
		FinSegun
    Hasta Que opcion = 4
FinAlgoritmo