Algoritmo MayorDeTresNumeros
	definir numero1, numero2, numero3, mayor Como Entero
	//Solicitando numeros para comprar
	Escribir "ingrse el primer numero: "
	leer numero1
	Escribir "ingrese el segundo numero: "
	leer numero2
	Escribir "ingrse el tercer numero: "
	leer numero3
	
	mayor = 0
	
	Si numero1 > mayor Entonces
		mayor = numero1
	Fin Si
	
	Si numero2 > mayor Entonces
		mayor = numero2
	Fin Si
	
	Si numero3 > mayor Entonces
		mayor =numero3
	Fin Si
	
	Escribir "El numero mayor: ", mayor
	
	Si numero1 = numero2 Y numero2 = numero3 Entonces
		Escribir "Los tres numeros son iguales"
	SiNo
		Si numero1 = numero2 O numero1 = numero3 O numero2 = numero3 Entonces
			Escribir "Al menos dos numeros son iguales"
		Fin si
	Fin Si
	
	//evaluar si los numero ingresados son iguales 
	
FinAlgoritmo
