Funcion distanciaTotal <- PedirDistancia
    Definir distanciaTotal Como Real
    Escribir "Ingrese la distancia total del viaje (km): "
    Leer distanciaTotal
FinFuncion

Funcion velocidadPromedio <- PedirVelocidad
    Definir velocidadPromedio Como Real
    Dimension registroVelocidad[2]
    Para  indice <- 1 hasta 1 Con Paso 1 hacer
		Escribir "Ingrese la velocidad promedio del coche (km/h): "
		Leer velocidadPromedio
		registroVelocidad[indice] <- velocidadPromedio
	FinPara
	
FinFuncion

Funcion tiempoEstimado <- CalcularTiempo(distancia, velocidad)
    tiempoEstimado <- distancia / velocidad
FinFuncion

Algoritmo ViajeEnCoche
    Definir distanciaTotal, velocidadPromedio, tiempoEstimado Como Real
    Definir registroVelocidad, indice Como Real
    
    Repetir
        Escribir "1. Ingresar datos del viaje"
        Escribir "2. Calcular tiempo del viaje"
        Escribir "3. Salir"
        Escribir "Seleccione una opcion: "
        Leer opcion
        
        Segun opcion Hacer
            1:
                distanciaTotal <- PedirDistancia
                velocidadPromedio <- PedirVelocidad
            2:
                Si velocidadPromedio > 0 Entonces
                    tiempoEstimado <- CalcularTiempo(distanciaTotal, velocidadPromedio)
                    Escribir "Tiempo estimado de viaje: ", tiempoEstimado, " horas"
                Sino
                    Escribir "?? Debe ingresar primero la distancia y velocidad validas."
                FinSi
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opcion invalida, intente de nuevo."
        FinSegun
        
    Hasta Que opcion = 3
FinAlgoritmo
