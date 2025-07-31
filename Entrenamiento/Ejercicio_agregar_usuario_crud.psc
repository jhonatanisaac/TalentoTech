Algoritmo crud
	//DECLARACIÓN DE VARIABLES
	Dimensionar cedula[3], nombres[3], apellidos[3], edad[3], menu[5]
	definir op Como Entero
	definir puede_registrar Como Caracter
	
	definir encontrado Como Caracter
	
	//Inicialización de la lista menu
	menu[1] <- "1. Registrar usuario"
	menu[2] <- "2. Actualizar usuario"
	menu[3] <- "3. Buscar usuario"
	menu[4] <- "4. Comprar tiquete"
	menu[5] <- "5. Salir"
	
	
	
	
	//imprimir menu
	para i<-1 hasta 5 Hacer
		Imprimir menu[i]
	FinPara
	
	Imprimir "Elija la opción: "
	leer op
	
	Mientras op <> 5 Hacer
		puede_registrar = "si"
		Segun op Hacer
			1:
				Imprimir "Digite la cedula del usuario a registrar: "
				leer cedula_usuario
				
				//ciclo para --> VERIFICAR SI EL USUARIO EXISTE
				para i <- 1 hasta 3 Hacer
					si cedula_usuario = cedula[i] Entonces
						puede_registrar = "no"
					FinSi
				FinPara
				
				si puede_registrar = "si" Entonces
					Imprimir "Digite los nombres del usuario a registrar: "
					leer nombres_usuario
					Imprimir "Digite los apellidos del usuario a registrar: "
					leer apellidos_usuario
					Imprimir "Digite la edad del usuario a registrar: "
					leer edad_usuario
					
					//Ciclo mientras --> verificar la posicion vacia para registrar el usuario en cascada 
					i <- 1
					Mientras i <= 3 Hacer
						si cedula[i] = "" Entonces
							cedula[i] = cedula_usuario
							nombres[i] = nombres_usuario
							apellidos[i] = apellidos_usuario
							edad[i] = edad_usuario
							// salir del ciclo después de registrar
							i <- 4
						SiNo
							i <- i + 1
						FinSi
					FinMientras
					
					Imprimir ""
					imprimir "USUARIO REGISTRADO"
					Imprimir ""
					
					para i <-1 hasta 3 Hacer
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
					FinPara
				SiNo
					imprimir ""
					imprimir "EL USUARIO NO PUEDE REGISTRARSE"
					imprimir ""
				FinSi
				
			2:
				encontrado = "nok"
				imprimir "DIGITE LA CEDULA DEL USUARIO AL CUAL SE ACTUALIZARA LOS DATOS: "
				leer cedula_usuario_mod
				
				para i <- 1 Hasta 3 Hacer
					si cedula[i] = cedula_usuario_mod Entonces
						Imprimir "Digite los nuevos nombres: "
						leer nuevo_nombre
						imprimir "Digite los nuevos apellidos: "
						leer nuevos_apellidos
						imprimir "Digite la nueva edad: "
						leer nueva_edad
						
						nombres[i] = nuevo_nombre
						apellidos[i] = nuevos_apellidos
						edad[i] = nueva_edad
						encontrado = "ok"
						
						i <- 4
						
					FinSi
				FinPara
				
				si encontrado = "nok" Entonces
					imprimir ""
					Imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO"
					imprimir ""
				FinSi
				
				imprimir ""
				imprimir "USUARIOS REGISTRADOS"
				para i <-1 hasta 3 Hacer
					imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
				FinPara
			3:
				encontrado = "nok"
				imprimir "DIGITE LA CEDULA DEL USUARIO A BUSCAR: "
				leer cedula_usuario
				
				para i <- 1 hasta 3 Hacer
					si cedula_usuario = cedula[i] Entonces
						imprimir ""
						imprimir "EL USUARIO SE ENCUENTRA REGISTRADO"
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
						encontrado = "ok"
					FinSi
				FinPara
				
				si encontrado = "nok" Entonces
					imprimir ""
					Imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO"
					Imprimir ""
				FinSi
			4:
				
			De Otro Modo:
				mostrar "OPCIÓN INCORRECTA, ESCOJA ENTRE 1 A 5"
		Fin Segun
		
		//IMPRIMIENDO NUEVAMENTE EL MENU PARA ACTUALIZAR LA VARIABLE OP
		para i<-1 hasta 5 Hacer
			Imprimir menu[i]
		FinPara
		
		Imprimir "Elija la opción: "
		leer op
		
	FinMientras
	
		
FinAlgoritmo
