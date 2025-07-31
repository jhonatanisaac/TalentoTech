Algoritmo PositivoONegativo
	Definir n Como Entero
	Definir pos, neg, neu Como Entero
	
	pos <- 0
	neg <- 0
	neu <- 0
	
	Escribir "¿Cuantos numeros desea ingresar?: "
	Leer n
	Para i <- 1 Hasta n Con paso 1 Hacer
		Escribir "ingrese el numero ", i, ":"
		leer num
		
		Si num > 0 Entonces
			pos <- pos + 1
			
		SiNo
			Si num < 0 Entonces
				neg <- neg + 1
				
			SiNo
				Si num = 0 Entonces
					neu <- neu + 1
				Fin Si
					
			Fin Si
		Fin Si
				
			
		FinPara
		
		Escribir "la cantidad de positivos es: ", pos
		Escribir "la cantidad de negativos es: ", neg
		Escribir "la cantidad de neutros es: ", neu
	
FinAlgoritmo

//Validar si el numero ingresado es neutro (0)
// Contador de numeros positivos, negativos y neutros
// cuanto numeros positivos, neutros negativos y neutros hay