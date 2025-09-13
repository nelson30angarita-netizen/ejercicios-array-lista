Funcion distanciaRecorrida <- PedirDistancia(numeroVehiculo)
    Definir distanciaRecorrida Como Real
    Escribir "Ingrese la distancia recorrida por el Vehículo ", numeroVehiculo, " (km): "
    Leer distanciaRecorrida
FinFuncion

Funcion tiempoTranscurrido <- PedirTiempo(numeroVehiculo)
    Definir tiempoTranscurrido Como Real
    Dimension registroTiempo[1]
    Para indice <- 1 hasta 1 Con Paso 1 hacer
        Escribir "Ingrese el tiempo transcurrido por el Vehículo ", numeroVehiculo, " (horas): "
        Leer tiempoTranscurrido
        registroTiempo[indice] <- tiempoTranscurrido
    FinPara
    
FinFuncion

Funcion velocidadPromedio <- CalcularVelocidad(distancia, tiempo)
    Definir velocidadPromedio Como Real
    velocidadPromedio <- distancia / tiempo
FinFuncion

SubProceso MostrarResultado(numeroVehiculo, velocidad)
    
    Escribir "La velocidad promedio del Vehículo ", numeroVehiculo, " es: ", velocidad, " km/h"
    
FinSubProceso

Algoritmo VelocidadDosCarros
    Definir distancia1, tiempo1, velocidad1 Como Real
    Definir distancia2, tiempo2, velocidad2 Como Real
    Definir lista, indice Como Real
    Definir totalRegistros Como Entero
    
    Repetir
        Escribir "     MENU     "
        Escribir "1. Calcular distancia de los carros"
        Escribir "2. Ver registros guardados"
        Escribir "3. Salir"
        Leer opcion
        
        Segun opcion Hacer
            1:
                distancia1 <- PedirDistancia(1)
                tiempo1 <- PedirTiempo(1)
                velocidad1 <- CalcularVelocidad(distancia1, tiempo1)
                MostrarResultado(1, velocidad1)
                
                distancia2 <- PedirDistancia(2)
                tiempo2 <- PedirTiempo(2)
                velocidad2 <- CalcularVelocidad(distancia2, tiempo2)
                MostrarResultado(2, velocidad2)
                
                totalRegistros <- 2
                Esperar Tecla
                
            2:
                Si totalRegistros = 0 Entonces
                    Escribir "Aun no hay datos de registros."
                Sino
                    MostrarResultado(1, velocidad1)
                    MostrarResultado(2, velocidad2)
                    Escribir "El total de registros es: ", totalRegistros
                FinSi
                Esperar Tecla
                
            3:
                Escribir "Saliendo del programa, gracias por confiar en nosotros."
                
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo
	
 
    

