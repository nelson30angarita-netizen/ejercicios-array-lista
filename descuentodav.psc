Funcion precioBase <- PedirPrecio
    Definir precioBase Como Real
    Escribir "Ingrese el precio de la compra: "
    Leer precioBase
FinFuncion

Funcion porcentajeDescuento <- PedirDescuento
    Definir porcentajeDescuento Como Real
	Dimension registroDescuento[1]
	Para  indice <- 1 Hasta 1 Con Paso 1
		
		Escribir "Ingrese el porcentaje de descuento (%): "
		Leer porcentajeDescuento
		registroDescuento[indice] <- porcentajeDescuento
	FinPara
	
FinFuncion

Funcion precioFinal <- CalcularFinal(precioBase, porcentajeDescuento)
    Definir montoDescuento, precioFinal Como Real
	montoDescuento <- precioBase * (porcentajeDescuento / 100)
    precioFinal <- precioBase - montoDescuento
	
	
    Escribir "Precio original: $", precioBase
    Escribir "Descuento aplicado: $", montoDescuento
    Escribir "Precio final a pagar: $", precioFinal
	
FinFuncion

Algoritmo CompraConDescuento
    Definir precioBase, porcentajeDescuento, precioFinal Como Real
    
    Definir  registroDescuento , indice Como Real
	
	
	
	
	
    Repetir
		
		
		
        Escribir "1. Ingresar el precio de la compra"
        Escribir "2. Ingresar el descuento de la compra"
        Escribir "3. Calcular precio final"
        Escribir "4. Salir"
        
        Escribir "Elija una opcion: "
        Leer opcion
        
		Segun opcion Hacer 
            1:
                precioBase <- PedirPrecio
            2:
                porcentajeDescuento <- PedirDescuento
                Si precioBase = 0 Entonces
                    Escribir "Aun no hay datos de venta."
                FinSi
            3:
                precioFinal <- CalcularFinal(precioBase, porcentajeDescuento)
                Escribir "El precio final con descuento es: ", precioFinal
            4:
                Escribir "Saliendo del programa, muchas gracias por preferirnos."
            De Otro Modo:
                Escribir "Opcion no valida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo
