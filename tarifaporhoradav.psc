Funcion horasTrabajadas <- PedirTiempo
    Definir horasTrabajadas Como Real
    Escribir "Ingrese el tiempo trabajado en horas: "
    Leer horasTrabajadas
FinFuncion

Funcion tarifaPorHora <- PedirTarifa
    Definir tarifaPorHora Como Real
	Dimension registroDatos[2]
	para indice <- 1 hasta 1 Con Paso 1 hacer
		Escribir "Ingrese la tarifa por hora: "
		Leer tarifaPorHora
		registroDatos[indice] <- tarifaPorHora
	FinPara
	
FinFuncion

Funcion costoTotal <- CalcularCosto(horas, tarifa)
    Definir costoTotal Como Real
    costoTotal <- horas * tarifa
FinFuncion

SubProceso MostrarResultado(costoTotal)
    
    Escribir "El costo total es: $", costoTotal
	
FinSubProceso

Algoritmo CostoTrabajo
    Definir horasTrabajadas, tarifaPorHora, costoTotal Como Real
    Definir registroDatos, indice, opcionMenu Como Real
    
    Repetir
        Escribir "1. Ingresar horas trabajadas"
        Escribir "2. Ingresar tarifa por hora"
        Escribir "3. Calcular costo total"
        Escribir "4. Salir"
		Escribir "Elija una opcion: "
        Leer opcionMenu
        
        Segun opcionMenu Hacer
            1:
                horasTrabajadas <- PedirTiempo
            2:
                tarifaPorHora <- PedirTarifa
            3:
                costoTotal <- CalcularCosto(horasTrabajadas, tarifaPorHora)
                MostrarResultado(costoTotal)
            4:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opcion no valida, intente de nuevo."
        FinSegun
    Hasta Que opcionMenu = 4
FinAlgoritmo