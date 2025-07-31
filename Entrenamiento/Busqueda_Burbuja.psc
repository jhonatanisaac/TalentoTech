Algoritmo Ordenamiento_burbuja
	definir n, aux  Como Entero
	
	imprimir "Digite el tamaño de la lista: "
	leer n 
	
	Dimensionar l1[n] 
	
	//Asignando valoes a la lista  1l
	para i <- 1 hasta n Hacer
		l1[i] = Aleatorio(1 , 30)
		Escribir l1[i]
	FinPara
	
	//realizar ordenamiento en burbuja 
	para i<-1 hasta n -1 hacer 
		para j <- 1 hasta n - i Hacer
			si l1[j] > l1[j+1] Entonces
				aux <- l1[j]
				l1[j] <- l1[j+1]
				l1[j+1] <- aux				
			FinSi
		FinPara
	FinPara
	
	Escribir "lista ordenada"
	para i <- 1 hasta n Hacer
		escribir l1[i]
	FinPara
	
FinAlgoritmo
