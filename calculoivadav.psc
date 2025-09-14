Funcion precioUnitario <- PedirPrecio
    Definir precioUnitario Como Real
    Escribir "Ingrese el precio unitario: "
    Leer precioUnitario
FinFuncion

Funcion cantidadProducto <- PedirCantidad
    Definir cantidadProducto Como Entero
	Definir indice , registro Como Real
	Dimension registro[1]
	Para indice <- 1 hasta 1 Con Paso 1
		Escribir "Ingrese la cantidad: "
		Leer cantidadProducto
		registro[indice] <- cantidadProducto
	FinPara
	
FinFuncion


Funcion totalConIVA <- CalcularTotal(precioUnitario, cantidadProducto)
    Definir subtotal, valorIVA, totalConIVA Como Real
    
    subtotal <- precioUnitario * cantidadProducto
    valorIVA <- subtotal * 0.19
    totalConIVA <- subtotal + valorIVA
    
    
    Escribir "Subtotal: $", subtotal
    Escribir "IVA (19%): $", valorIVA
    Escribir "TOTAL A PAGAR: $", totalConIVA
    
    
FinFuncion

Algoritmo CalculoVenta
    Definir opcionMenu Como Entero
    Definir precioUnitario Como Real
    Definir cantidadProducto Como Entero
    
	Repetir
        Escribir "       MENÚ"
        Escribir "1. Ingresar cantidad del producto"
        Escribir "2. Ingresar precio unitario"
        Escribir "3. Calcular total con IVA"
        Escribir "4. Salir"
        Escribir "Elija una opcion: "
        Leer opcionMenu
        
        Segun opcionMenu Hacer
            1:
                cantidadProducto <- PedirCantidad
            2:
                precioUnitario <- PedirPrecio
            3:
                totalConIVA <- CalcularTotal(precioUnitario, cantidadProducto)
                Escribir "El total a pagar con IVA es: ", totalConIVA
            4:
                Escribir "Saliendo del programa, muchas gracias por preferirnos "
            De Otro Modo:
                Escribir "Opcion no valida, intente de nuevo."
        FinSegun
    Hasta Que opcionMenu = 4
FinAlgoritmo
