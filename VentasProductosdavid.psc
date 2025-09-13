Funcion importe <- CalcularSubtotal(cantidad, costo)
    Definir importe Como Real
    importe <- cantidad * costo
FinFuncion


Funcion totalArticulos(calcularTotalArticulos)
	Definir total_Articulos Como entero
	Dimension listaTotal[3]
	para indice <- 1 hasta 1 Con Paso 1 hacer
		Escribir "ingresar el total de Articulos"
		Leer total_Articulos
		listaTotal[indice] <- total_Articulos
	FinPara
	
FinFuncion
SubProceso MostrarResultado( totalVenta)
	
    Escribir "TOTAL A PAGAR: $", totalVenta
	
	
	
FinSubProceso

Algoritmo VentasProductos
    Definir cantidad1, cantidad2, cantidad3 Como Entero
    Definir precio1, precio2, precio3 Como Real
    Definir importe1, importe2, importe3, totalVenta Como Real
    Definir total_Articulos Como Entero
	Definir listaTotal, indice Como Real
	
    
    Repetir
        Escribir "      MENÚ DE VENTAS      "
        Escribir "1. Ingresar datos de productos"
        Escribir "2. Calcular total de unidades y venta"
        Escribir "3. Mostrar resultado"
        Escribir "4. Salir"
        
        Leer opcion
		
        Segun opcion Hacer
            1:
                Escribir "Ingrese unidades vendidas del Producto 1: "
                Leer cantidad1
                Escribir "Ingrese precio unitario del Producto 1: "
                Leer precio1
				
                Escribir "Ingrese unidades vendidas del Producto 2: "
                Leer cantidad2
                Escribir "Ingrese precio unitario del Producto 2: "
                Leer precio2
				
                Escribir "Ingrese unidades vendidas del Producto 3: "
                Leer cantidad3
                Escribir "Ingrese precio unitario del Producto 3: "
                Leer precio3
				
            2:
                importe1 <- CalcularSubtotal(cantidad1, precio1)
                importe2 <- CalcularSubtotal(cantidad2, precio2)
                importe3 <- CalcularSubtotal(cantidad3, precio3)
				
                total_Articulos <- cantidad1 + cantidad2 + cantidad3
                totalVenta <- importe1 + importe2 + importe3
				
                Escribir "Total de Unidades Vendidas: ", total_Articulos
				
            3:
                MostrarResultado(totalVenta)
				
            4:
                Escribir "Saliendo del programa, muchas gracias en confiar en nosostros"
				
            De Otro Modo:
                Escribir "Opción no válida, intenta nuevamente, por favor ingrese una opcion validad"
        FinSegun
    Hasta Que opcion = 4
	
FinAlgoritmo