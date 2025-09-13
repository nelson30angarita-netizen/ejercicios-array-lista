Funcion cantidadDeTramos <- PedirCantidadTramos
    Definir cantidadDeTramos Como Entero
    Escribir "Ingrese la cantidad de tramos del viaje: "
    Leer cantidadDeTramos
FinFuncion

Funcion duracionTotal <- CalcularTiempoTotal(cantidad)
    
    Definir duracionDeTramo, duracionTotal Como Real
	Dimension tiemposGuardados[2]
	
    duracionTotal <- 0
	
    Para indice <- 1 Hasta cantidad Con Paso 1 Hacer
        Escribir "Ingrese el tiempo del tramo ", indice, " (en horas): "
        Leer duracionDeTramo
		tiemposGuardados[indice] <- duracionDeTramo
        duracionTotal <- duracionTotal + duracionDeTramo
    FinPara
FinFuncion

SubProceso MostrarResultado(duracionTotal)
	
    Escribir "El tiempo total del viaje es: ", duracionTotal, " horas"
    
FinSubProceso

Algoritmo TiempoDeViaje
    Definir cantidadDeTramos Como Entero
    
    Definir duracionTotal Como Real
	Definir tiemposGuardados, indice Como Real
	
    Repetir
        Escribir "1. Ingresar cantidad de tramos"
        Escribir "2. Calcular tiempo total del viaje"
        Escribir "3. Mostrar resultado"
        Escribir "4. Salir"
		
        Leer opcion
		
        Segun opcion Hacer
            1:
                cantidadDeTramos <- PedirCantidadTramos
            2:
                Si cantidadDeTramos > 0 Entonces
                    duracionTotal <- CalcularTiempoTotal(cantidadDeTramos)
                Sino
                    Escribir "?? Primero debe ingresar la cantidad de tramos (opción 1)."
                FinSi
            3:
                Si duracionTotal > 0 Entonces
                    MostrarResultado(duracionTotal)
                Sino
                    Escribir " Debe calcular el tiempo total primero (opción 2)."
                FinSi
            4:
                Escribir " Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida, intente nuevamente."
        FinSegun
    Hasta Que opcion = 4
    
	
    
FinAlgoritmo