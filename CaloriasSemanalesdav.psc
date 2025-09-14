Funcion caloriasPorDia <- PedirCaloriasDia(dia)
    Definir comida, indice, caloriasPorDia Como Real
    caloriasPorDia <- 0
    
    Escribir "---- Dia ", dia, " ----"
    
    Para indice <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese calorias de la comida ", indice, ": "
        Leer comida
        caloriasPorDia <- caloriasPorDia + comida
    FinPara
    
FinFuncion

Funcion totalSemanal <- SumarSemana(registroDiario)
    Definir dia Como Entero
    Definir caloriasDiarias, totalSemanal Como Real
    totalSemanal <- 0
    
    Para dia <- 1 Hasta 7 Con Paso 1 Hacer
        caloriasDiarias <- PedirCaloriasDia(dia)
        registroDiario[dia] <- caloriasDiarias
        Escribir "Calorias totales del dia ", dia, ": ", caloriasDiarias
        totalSemanal <- totalSemanal + caloriasDiarias
    FinPara
    
FinFuncion

SubProceso MostrarResultado(totalSemanal, registroDiario)
    
    Escribir "Calorias totales en la semana: ", totalSemanal
    
    
    Para indice <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Dia ", indice, ": ", registroDiario[indice], " calorias"
    FinPara
FinSubProceso


Algoritmo CaloriasSemanales
    Definir registroDiario Como Real
    Dimension registroDiario[7]   
    Definir opcionMenu, totalSemanal Como Real
    
    Repetir
        Escribir "     MENU     "
        Escribir "1. Ingresar calorias de la semana"
        Escribir "2. Mostrar total semanal"
        Escribir "3. Salir"
        Escribir "Digite una opcion: "
        Leer opcionMenu
        
        Segun opcionMenu Hacer
            1:
                totalSemanal <- SumarSemana(registroDiario)
            2:
                MostrarResultado(totalSemanal, registroDiario)
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opcion invalida, intente de nuevo."
        FinSegun
    Hasta Que opcionMenu = 3
FinAlgoritmo