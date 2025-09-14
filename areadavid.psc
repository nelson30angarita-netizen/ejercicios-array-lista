Funcion baseRectangulo <- PedirBase
    Definir baseRectangulo Como Real
    Escribir "Ingrese la base del rectangulo: "
    Leer baseRectangulo
FinFuncion

Funcion alturaRectangulo <- PedirAltura
    Definir alturaRectangulo Como Real
	Dimension  registro[1]
	para indice <- 1 hasta  1 Con Paso 1 Hacer
		Escribir "Ingrese la altura del rectangulo: "
		Leer alturaRectangulo
		registro[indice] <- alturaRectangulo
	FinPara
	
	
FinFuncion

Funcion areaRectangulo <- CalcularArea(base, altura)
    Definir areaRectangulo Como Real
    areaRectangulo <- base * altura
    Escribir "El area del rectangulo es: ", areaRectangulo
    
FinFuncion

Algoritmo Area_Rectangulo
    Definir baseRectangulo, alturaRectangulo, areaRectangulo Como Real
    
	Definir registro, indice Como Real
	
	
	Repetir
        
        Escribir "1. Ingresar base y altura"
        Escribir "2. Calcular area"
        Escribir "3. Ver datos registrados"
        Escribir "4. Salir"
		
        Escribir "Elija una opcion: "
        Leer opcion
        
        Segun opcion Hacer 
            1:
                baseRectangulo <- PedirBase
                alturaRectangulo <- PedirAltura
                Escribir "Datos ingresados correctamente."
            2:
                areaRectangulo <- CalcularArea(baseRectangulo, alturaRectangulo)
            3:
                Escribir "Base: ", baseRectangulo
                Escribir "Altura: ", alturaRectangulo
                Escribir "Area (ultimo calculo): ", areaRectangulo
            4:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opcion no valida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo