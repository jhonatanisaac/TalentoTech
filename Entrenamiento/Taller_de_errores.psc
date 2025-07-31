Algoritmo Taller_Errores
	
    Definir promedio Como Entero
	Dimensionar nombres[5], edades[5] //Se cambia definir por dimensionar
    Definir suma, mayor, menor Como Real 
    Definir i, n Como Entero
    suma <- 0
    mayor <- 0
    menor <- 100
	
    Escribir "Ingrese la cantidad de estudiantes:"
    Leer n
	
    Para i = 1 Hasta n Hacer
        Escribir "Ingrese el nombre del estudiante ", i, ":"
        Leer nombres[i] //no tenia el subindice i
        Escribir "Ingrese la edad del estudiante ", i, ":"
        Leer edades[i]
        suma = suma + edades[i]
        Si edades[i] > mayor Entonces
            mayor = edades[i]
        FinSi
        Si edades[i] < menor
            menor = edades[i] //no tenia el subindice i
        FinSi
	FinPara
	
    promedio = suma / n
	
    Escribir "El promedio de edades es: ", promedio
    Escribir "La edad mayor es: ", mayor
    Escribir "La edad menor es: ", menor
	
    Escribir "Listado de estudiantes mayores de edad:"
    Para i = 1 Hasta n
        Si edades[i] >= 18
            Escribir nombres[i], " - ", edades[i]
        FinSi
    FinPara
	
    Escribir "¿Desea buscar un estudiante? (si/no)"
    Leer respuesta
    Si respuesta == "si"
        Escribir "Ingrese el nombre a buscar:"
        Leer nombre_busqueda
        encontrado = falso
        Para j = 1 Hasta n
            Si nombres[j] = nombre_busqueda
                Escribir "Edad: ", edades[j]
                encontrado = verdadero
            FinSi
        FinPara
        Si encontrado = falso
            Escribir "No se encontró el estudiante."
        FinSi
    FinSi
	
    Escribir "Fin del programa."
FinAlgoritmo