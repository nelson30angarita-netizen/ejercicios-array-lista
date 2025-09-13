Funcion suma <- Pedir_numeros
    Definir  num Como Entero;
    Definir suma Como Entero;
    suma <- 0
    Dimension lista[5]
	
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
	
        Escribir "Ingrese el número ", i , ": "
        Leer num
        suma <- suma + num
		Lista[i] <- num
    FinPara
FinFuncion

Funcion resultado <- resultado_suma(suma)
    Definir resultado Como Entero
    resultado <- suma
FinFuncion

SubProceso Mostrar_resultado(resultado)
    
    Escribir "La suma de los 5 números es: ", resultado
	
FinSubProceso

Algoritmo Suma_5_numeros
    Definir suma, resultado Como Entero
	Definir lista, i Como Real
	
	
	
	Repetir
        Escribir "     MENÚ     "
        Escribir "1. Ingresar los 5 números que vas a sumar "
        Escribir "2. Calcular la suma"
        Escribir "3. Mostrar resultado"
        Escribir "4. Salir"
        Escribir "Elija una opción: "
        Leer opcion
		
        Segun opcion Hacer
            1:
                suma <- Pedir_numeros
                numerosIngresados <- Verdadero
            2:
                Si numerosIngresados Entonces
                    resultado <- resultado_suma(suma)
                    Escribir " Suma calculada correctamente."
                Sino
                    Escribir " Primero debe ingresar los números (opción 1)."
                FinSi
            3:
                Si resultado > 0 Entonces
                    Mostrar_resultado(resultado)
                Sino
                    Escribir " No hay resultado aún. Use la opción 2."
                FinSi
            4:
                Escribir " Saliendo del programa..."
            De Otro Modo:
                Escribir " Opción inválida, intente nuevamente."
        FinSegun
    Hasta Que opcion = 4
    
FinAlgoritmo
