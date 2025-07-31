Algoritmo crud
	Dimensionar menu[5], menu2[3]
	Definir op Como Entero
	Definir puede_registrar, encontrado Como Caracter
	
	Imprimir "Ingresar cantidad de usuarios a registrar: "
	Leer nu
	Dimensionar cedula[nu], nombres[nu], apellidos[nu], edad[nu]
	
	//Inicializacion de la lista menu
	menu[1] = "1. Registrar usuario"
	menu[2] = "2. Actualizar usuario"
	menu[3] = "3. Buscar usuario"
	menu[4] = "4. Comprar tiquete"
	menu[5] = "5. Salir"
	
	//Inicializacion de la lista menu2
	menu2[1] = "1. España"
	menu2[2] = "2. Inglaterra"
	menu2[3] = "3. Ninguno"
	
	puede_registrar = "SI"
	
	//Imprimir menu
	Para i = 1 Hasta 5 Hacer
		Imprimir menu[i]
	FinPara
	
	Imprimir "Elija opcion: "
	Leer op
	
	//Mientras op <> 5 Hacer
	Repetir
		
		puede_registrar = "si"
		Segun op Hacer
			1:
				Imprimir "Digite la cedula del usuario a registrar: "
				Leer cedula_usuario
				
				// ciclo para verificar si el usuario existe
				Para i = 1 Hasta nu Hacer
					si cedula_usuario = cedula[i] Entonces
						puede_registrar = "no"
					FinSi
				FinPara
				
				si puede_registrar = "si" Entonces
					Imprimir "Digite los nombres del usuario a registrar: "
					Leer nombres_usuario
					Imprimir "Digite los apellidos del usuario a registrar: "
					Leer apellidos_usuario
					Imprimir "Digite  la edad del usuario a registrar: "
					Leer edad_usuario
					
					//ciclo mientras  verificar la posicion vacia para registrar el usuario en cascada
					i = 1
					Mientras i <= nu
						si cedula[i] = "" Entonces
							cedula[i] = cedula_usuario
							nombres[i] = nombres_usuario
							apellidos[i] = apellidos_usuario
							edad[i] = edad_usuario
							i = nu
						FinSi
						i = i + 1
					FinMientras
					
					Imprimir ""
					imprimir "USUARIO REGISTRADO"
					Imprimir ""
					
					para i <-1 hasta nu Hacer
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
						Imprimir ""
					FinPara
				SiNo
					Imprimir ""
					Imprimir "EL USUARIO NO PUEDE REGISTRARSE"
					Imprimir ""
				FinSi
			2:
				encontrado = "nok"
				imprimir "DIGITE LA CEDULA DEL USUARIO AL CUAL SE ACTUALIZARA LOS DATOS"
				Leer cedula_usuario_mod
				
				//para i = 1 Hasta 3 Hacer
				i = 1
				Mientras i <= nu
					si cedula[i] = cedula_usuario_mod Entonces
						Imprimir "Digite los nuevos nombres: "
						Leer nuevo_nombre
						Imprimir "Digite los nuevos apellidos: "
						Leer nuevos_apellidos
						Imprimir "Digite la nueva edad: "
						Leer nueva_edad
						
						nombres[i] = nuevo_nombre
						apellidos[i] = nuevos_apellidos
						edad[i] = nueva_edad
						encontrado = "ok"
						i = nu
					FinSi
					i = i + 1
					//FinPara
				FinMientras
				
				
				si encontrado = "nok" Entonces
					Imprimir ""
					Imprimir "EL USUARIO NO NO SE ENCUENTRA REGISTRADO"
					Imprimir ""
				FinSi
				
				Imprimir ""
				Imprimir "USUARIOS REGISTRADOS"
				para i = 1 Hasta nu Hacer
					Imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
				FinPara
				
			3:
				encontrado = "nok"
				imprimir "DIGITE LA CEDULA DEL USUARIO A BUSCAR"
				Leer cedula_usuario
				
				//Para i = 1 Hasta 3 Hacer
				i = 1
				Mientras i <= nu
					si cedula_usuario = cedula[i] Entonces
						Imprimir ""
						Imprimir "EL USUARIO SE ENCUENTRA REGISTRADO"
						Imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
						encontrado = "ok"
						i = nu
					FinSi
					i = i + 1
					//FinPara
				FinMientras
								
				si encontrado = "nok" Entonces
					imprimir ""
					Imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO"
					Imprimir ""
				FinSi
				
			4:
				encontrado = "nok"
				Imprimir "Cedula del pasajero: "
				Leer cedula_pasajero
				
				i = 1
				Mientras i <= nu Hacer
					si cedula[i] = cedula_pasajero Entonces
						encontrado = "ok"
						Imprimir "DESEO VIAJAR A: "
						Para j = 1 Hasta 3 Hacer
							Imprimir menu2[j]
						FinPara
						//Imprimir "1. España"
						//Imprimir "2. Inglaterra"
						//Imprimir "3. Ninguno"
						Imprimir "Cual es su opcion: "
						Leer opcion_viaje
						
						Segun opcion_viaje Hacer
							Opcion 1:
								Imprimir "El valor del tiquete es de: 1.000.000"
								Imprimir ""
							Opcion 2:
								Imprimir "El valor del tiquete es de: 2.000.000"
								Imprimir ""
							Opcion 3:
								Imprimir "Hasta la proxima"
								Imprimir ""	
							De Otro Modo:
								Imprimir "OPCION NO VALIDA"
								Imprimir ""
						
						FinSegun
						i = nu
						
					FinSi
					i = i + 1
				FinMientras
				
				si encontrado = "nok" Entonces
					Imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO - NO SE PUEDE VENDER TIQUETE"
					Imprimir ""
				SiNo
					Imprimir "USUARIO ENCONTRADO"
					Imprimir ""
					
					Segun opcion_viaje Hacer
						Opcion 1:
							Imprimir "Y TIENE UN VIAJE PENDIENTE A ESPAÑA"
							Imprimir ""
						Opcion 2:
							Imprimir "Y TIENE UN VIAJE PENDIENTE A INGLATERRA"
							Imprimir ""
						Opcion 3:
							Imprimir "Y NO COMPRO NINGUN TIQUETE"
							Imprimir ""	
						De Otro Modo:
							Imprimir "Y TOMO UNA OPCION NO VALIDA"
							Imprimir ""
							
					FinSegun
					
				FinSi
				
			De Otro Modo:
				mostrar "OPCIÓN INCORRECTA, ESCOJA ENTRE 1 A 5"
		Fin Segun
		
		//IMPRIMIENDO NUEVAMENTE EL MENU PARA ACTUALIZAR LA VARIABLE OP
		para i = 1 hasta 5 Hacer
			Imprimir menu[i]
		FinPara
		
		Imprimir "Elija la opción: "
		leer op
		
	//FinMientras
	Hasta Que op = 5
	
FinAlgoritmo

