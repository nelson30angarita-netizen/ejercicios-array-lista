Funcion pesoPersona <- PedirPeso(numeroPersona)
    Definir pesoPersona Como Real
    Escribir "Ingrese el peso (kg) de la Persona ", numeroPersona, ": "
    Leer pesoPersona
FinFuncion

Funcion alturaPersona <- PedirAltura(numeroPersona)
    Definir alturaPersona Como Real
    Dimension registroLista[2]
    para indice <- 1 hasta 1 Con Paso 1 hacer
		Escribir "Ingrese la altura (m) de la Persona ", numeroPersona, ": "
		Leer alturaPersona
		registroLista[indice] <- alturaPersona
	FinPara
	
FinFuncion

Funcion indiceMasaCorporal <- CalcularIMC(pesoPersona, alturaPersona)
    Definir indiceMasaCorporal Como Real
    indiceMasaCorporal <- pesoPersona / (alturaPersona * alturaPersona)
FinFuncion

SubProceso MostrarIMC(numeroPersona, indiceMasaCorporal)
    
    Escribir "El IMC de la Persona ", numeroPersona, " es: ", indiceMasaCorporal
    
FinSubProceso

Algoritmo IMCDosPersonas
    Definir pesoPersona1, alturaPersona1, imcPersona1 Como Real
    Definir pesoPersona2, alturaPersona2, imcPersona2 Como Real
    Definir registroLista, indice Como Real
    Definir totalRegistros Como Real
	
	
	Repetir
		Escribir  "1. ingresar el peso de la primera persona "
		Escribir  "2. ingresar el peso de la segunda persona "
		Escribir  "3. calcular el IMC de las 2 personas segun su peso"
		Escribir  " 4. salir "
		Leer opcionMenu
		
		Segun opcionMenu Hacer
            1: 
                pesoPersona1 <- PedirPeso(1)
                alturaPersona1 <- PedirAltura(1)
            2: 
                pesoPersona2 <- PedirPeso(2)
                alturaPersona2 <- PedirAltura(2)
            3:
                imcPersona1 <- CalcularIMC(pesoPersona1, alturaPersona1)
                MostrarIMC(1, imcPersona1)
                imcPersona2 <- CalcularIMC(pesoPersona2, alturaPersona2)
                MostrarIMC(2, imcPersona2)
                totalRegistros <- 2
                Esperar Tecla
                
            4:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        FinSegun
    Hasta Que opcionMenu = 4
	
	
    
FinAlgoritmo






