Algoritmo SistemaNotas
    Definir notas, n, i Como Entero
    Dimension notas[5]
    Definir opcion Como Entero
    Definir continuar Como Logico
    
    // Inicializar arreglo con 0
    Para i <- 1 Hasta 5 Hacer
        notas[i] <- 0
    FinPara
    
    continuar <- Verdadero
    
    Mientras continuar Hacer
        Escribir "===== SISTEMA DE NOTAS FE729 ====="
        Escribir "1. Ingresar notas"
        Escribir "2. Mostrar notas y categorias"
        Escribir "3. Estadisticas"
        Escribir "4. Sumar puntos extra"
        Escribir "5. Salir"
        Escribir "Opcion:"
        Leer opcion
        
        Segun opcion Hacer
            1:
                Para i <- 1 Hasta 5 Hacer
                    Escribir "Ingrese nota del estudiante ", i, " (0-100):"
                    Leer notas[i]
                    Mientras notas[i] < 0 O notas[i] > 100 Hacer
                        Escribir "Nota invalida. Ingrese un valor entre 0 y 100:"
                        Leer notas[i]
                    FinMientras
                FinPara
            2:
                Para i <- 1 Hasta 5 Hacer
                    Escribir "Estudiante ", i, ": ", notas[i], " - ", Categoria(notas[i])
                FinPara
            3:
                Escribir "Promedio: ", Promedio(notas)
                Escribir "Nota mas alta: ", NotaMasAlta(notas)
                Escribir "Aprobados: ", ContarAprobados(notas)
            4:
                Para i <- 1 Hasta 5 Hacer
                    notas[i] <- notas[i] + 5
                    Si notas[i] > 100 Entonces
                        notas[i] <- 100
                    FinSi
                FinPara
                Escribir "Se sumaron 5 puntos a cada estudiante."
            5:
                continuar <- Falso
            De Otro Modo:
                Escribir "Opcion no valida."
        FinSegun
        Escribir ""
    FinMientras
    
FinAlgoritmo

// Funcion para categoria de nota
Funcion cat <- Categoria(nota)
    Definir cat Como Caracter
    Si nota >= 90 Y nota <= 100 Entonces
        cat <- "Sobresaliente"
    Sino 
	FinSi
		Si nota >= 76 Entonces
			cat <- "Notable"
		Sino 
		FinSi
			Si nota >= 61 Entonces
				cat <- "Satisfactorio"
			Sino
				cat <- "Insuficiente"
			FinSi
FinFuncion

// Funcion para promedio
Funcion prom <- Promedio(notas)
    Definir prom, suma, i Como Real
    suma <- 0
    Para i <- 1 Hasta 5 Hacer
        suma <- suma + notas[i]
    FinPara
    prom <- suma / 5
FinFuncion

// Funcion para nota mas alta
Funcion max <- NotaMasAlta(notas)
    Definir max, i Como Entero
    max <- notas[1]
    Para i <- 2 Hasta 5 Hacer
        Si notas[i] > max Entonces
            max <- notas[i]
        FinSi
    FinPara
FinFuncion

// Funcion para contar aprobados
Funcion aprobados <- ContarAprobados(notas)
    Definir aprobados, i Como Entero
    aprobados <- 0
    Para i <- 1 Hasta 5 Hacer
        Si notas[i] >= 61 Entonces
            aprobados <- aprobados + 1
        FinSi
    FinPara
FinFuncion