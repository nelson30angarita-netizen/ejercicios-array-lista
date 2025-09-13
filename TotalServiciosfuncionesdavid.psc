Funcion cantidadServicios <- PedirCantidadServicios
    Definir cantidadServicios Como Entero
    Escribir "Ingrese la cantidad de servicios a pagar: "
    Leer cantidadServicios;
FinFuncion

Funcion totalAPagar <- CalcularTotal(cantidad)
    
    Definir costoServicio, totalAPagar Como Real
	Dimension registroConsumos[4]
	
    totalAPagar <- 0
	
    Para indice <- 1 Hasta 4 Con Paso 1 Hacer
        Escribir "Ingrese el consumo (costo) del servicio ", indice , ": "
        Leer costoServicio
		registroConsumos[indice] <- costoServicio
        totalAPagar <- totalAPagar + costoServicio
    FinPara
FinFuncion

SubProceso MostrarResultado(totalAPagar)
    
    Escribir "El total a pagar por todos los servicios es: $", totalAPagar
	
FinSubProceso

Algoritmo TotalServicios
    Definir cantidadServicios Como Entero
    Definir totalAPagar Como Real
	Definir registroConsumos, indice Como Real
	
    Repetir
        Escribir "     MENÚ DE SERVICIOS     "
        Escribir " 1. Ingresar cantidad de servicios"
        Escribir " 2. Calcular total a pagar"
        Escribir " 3. Mostrar resultado"
        Escribir " 4. Salir"
		
        Leer opcion
		
        Segun opcion Hacer
            1:
                cantidadServicios <- PedirCantidadServicios
            2:
                Si cantidadServicios > 0 Entonces
                    totalAPagar <- CalcularTotal(cantidadServicios)
                Sino
                    Escribir " Primero debe ingresar la cantidad de servicios (opción 1)."
                FinSi
            3:
                Si totalAPagar > 0 Entonces
                    MostrarResultado(totalAPagar)
                Sino
                    Escribir " Debe calcular el total primero (opción 2)."
                FinSi
            4:
                Escribir " Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida, intente nuevamente."
        FinSegun
    Hasta Que opcion = 4
	
	
FinAlgoritmo


