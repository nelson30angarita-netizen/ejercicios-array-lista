Funcion temperaturaCelsius <- PedirTemperatura
    Definir temperaturaCelsius Como Real
FinFuncion

Funcion temperaturaFahrenheit <- ConvertirAFahrenheit(temperaturaCelsius)
    Definir temperaturaFahrenheit Como Real
	Dimension registroLista[2]
	para indice <- 1 hasta 1 Con Paso  1
		Escribir "Ingrese la temperatura en Celsius: "
		Leer temperaturaCelsius
	FinPara
    temperaturaFahrenheit <- (temperaturaCelsius * 9/5) + 32
FinFuncion

SubProceso MostrarResultado(temperaturaCelsius, temperaturaFahrenheit)
    
    Escribir temperaturaCelsius, " °C equivalen a ", temperaturaFahrenheit, " °F"
	
FinSubProceso

Algoritmo Temperatura
    Definir temperaturaCelsius, temperaturaFahrenheit Como Real
	Definir registroLista, indice Como Real
    Definir opcionMenu Como Entero
    Definir conversionRealizada Como Logico
	
    conversionRealizada <- Falso
    
	Repetir
        Escribir "       MENÚ"
        Escribir "1. ingrese la temperatura en celsius a  fahrenheit"
		Escribir "2. ver el regristro de converciones "
        Escribir "3. salir"
		Escribir "Elija una opcion: "
        Leer opcionMenu
		
		Segun opcionMenu Hacer
            1:
                temperaturaCelsius <- PedirTemperatura
                temperaturaFahrenheit <- ConvertirAFahrenheit(temperaturaCelsius)
                MostrarResultado(temperaturaCelsius, temperaturaFahrenheit)
                conversionRealizada <- Verdadero
            2:
                Si conversionRealizada = Falso Entonces
                    Escribir "No hay registros de temperatura registrados"
                SiNo
                    MostrarResultado(temperaturaCelsius, temperaturaFahrenheit)
                FinSi
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opcion no valida, intente de nuevo."
        FinSegun
    Hasta Que opcionMenu = 3
FinAlgoritmo	
	
