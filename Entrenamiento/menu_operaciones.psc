Algoritmo menu_operaciones
	//definici�n variables
	definir opcion_m, numero_1, numero_2, resultado Como Real
	
	
	Mientras opcion_m <> 5 Hacer
		Escribir "MENU DE OPCIONES: "
		Escribir "1. Sumar"
		Escribir "2. Restar"
		Escribir "3. Multiplicar"
		Escribir "4. Dividir"
		Escribir "5. Salir"
		
		escribir "Elija su opci�n: "
		leer opcion_m
		
		si opcion_m >=1 y opcion_m <= 4 Entonces
			Mostrar "Digite el primer n�mero: "
			leer numero_1
			Mostrar "Digite el segundo n�mero: "
			leer numero_2
			
			Segun opcion_m Hacer
				1:
					resultado = numero_1 + numero_2
					Escribir "El resultado de la suma es: ", resultado
				2:
					resultado = numero_1 - numero_2
					Escribir "El resultado de la resta es: ", resultado
				3:
					resultado = numero_1 * numero_2
					Escribir "El resultado de la Multiplicaci�n es: ", resultado
				4:
					si numero_2 <> 0 Entonces
						resultado = numero_1 / numero_2
						Escribir "El resultado de la Divisi�n es: ", resultado
					SiNo
						Escribir "No se puede division entre 0"
					FinSi
			Fin Segun
		FinSi
		
		si opcion_m < 1 o opcion_m > 5 Entonces
			Escribir "La opci�n no es correcta.  Escoja entre la opcion 1 a 4"
		FinSi
		
	Fin Mientras
	
FinAlgoritmo
