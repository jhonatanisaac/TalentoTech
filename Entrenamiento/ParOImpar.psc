Algoritmo ParOImpar
	
	//Definicion de valores
	Definir n, num, num2 Como Entero
	num2 <- 0  
	
	//Obteniendo limite final del ciclo para
	Escribir "ingrese la cantidad de numeros a ingresar: "
	leer n
	
	//Realizar proceso obtencion numero y comparacion si es par o impar
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "ingrese el numero ", i
		leer num 
		Si num % 2 = 0 Entonces
			escribir "El numero es par"
		SiNo
			escribir "El numero no es par"
			num2 <- num2 + 1
		Fin Si
	Fin Para
	Escribir "La cantidad de numeros impares ingresados es: ", num2
	
FinAlgoritmo