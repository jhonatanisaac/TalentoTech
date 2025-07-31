Algoritmo Palindromo
	Definir palabra, invertida Como Cadena
	Definir i Como Entero
	
	Escribir "Ingrese una palabra: "
	Leer palabra
	
	invertida <- ""
	i <- Longitud(palabra)
	
	Mientras i >= 1 Hacer
		invertida <- invertida + Subcadena(palabra, i, i)
		i <- i - 1
	FinMientras
	
	Si palabra = invertida Entonces
		Escribir palabra, " ES UN PALINDROMO"
	SiNo
		Escribir palabra, " NO ES UN PALINDROMO"
	FinSi
FinAlgoritmo
