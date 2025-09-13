Funcion totalVentasAcumuladas <- PedirVentas
    Definir dia Como Entero
    Definir ventaDiaria, totalVentasAcumuladas Como Real
    
    totalVentasAcumuladas <- 0
    Dimension registroDiario[7]
    
    Para dia <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Ingrese la venta del dia ", dia, ": "
        Leer ventaDiaria
        registroDiario[dia] <- ventaDiaria
        totalVentasAcumuladas <- totalVentasAcumuladas + ventaDiaria
    FinPara
FinFuncion

Funcion totalSemanal <- CalcularTotal(totalVentasAcumuladas)
    Definir totalSemanal Como Real
    totalSemanal <- totalVentasAcumuladas
FinFuncion

SubProceso MostrarResultado(totalSemanal)
    Escribir "El total de ventas en la semana es: $", totalSemanal
    
FinSubProceso

Algoritmo VentasSemanales
    Definir totalAcumulado, totalSemanal Como Real
    definir registroGlobal, indice como real
    
    Repetir
        Limpiar Pantalla
        Escribir "     Menu     "
        Escribir "1. ingresar ventas de la semana "
        Escribir "2. ver ventas de la semana"
        Escribir "3. salir"
        Leer opcion
        
        segun opcion hacer
            1 :
                totalAcumulado <- PedirVentas
                totalSemanal <- CalcularTotal(totalAcumulado)
                MostrarResultado(totalSemanal)
                Escribir " todas las ventas quedarion registradas "
                Esperar Tecla
            2:
                Si totalSemanal = 0 Entonces
                    Escribir "Aun no hay datos de ventas."
                Sino
                    MostrarResultado(totalSemanal)
                    Escribir "El total de ventas en la semana es: $", totalSemanal
                FinSi
                Esperar Tecla
            3:
                escribir " saliendo del programa, gracias por confiar en nosostros "
                
            De Otro Modo:
                Escribir "Opcion no valida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
    
FinAlgoritmo