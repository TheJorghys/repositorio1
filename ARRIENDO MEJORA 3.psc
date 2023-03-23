Algoritmo ARRIENDO
	definir C_arriendo Como real
	definir R_luz Como real
	Definir R_gas como real
	definir R_agua Como Real
	definir P_telefonia Como Real
	Definir contrasena, ingreso_contrasena, recibo Como Cadena
	Definir TotalPago Como Real
    Definir NumTarjeta Como Entero
    Definir CVV Como Entero
	
	contrasena <- "12345"
	
	
	Repetir
		Escribir "Ingrese la contraseña para efectuar el pago : "
		Leer contra
		si contra=12345 Entonces
			contra<-12345
		SiNo
			Escribir "Contraseña incorrecta. Vuelva a intentarlo."
		FinSi
		
	Hasta Que contra=12345
	
	Si contra=12345 Entonces
		Escribir "Contraseña correcta. Ingresando al sistema..."
		
	Fin Si
	Escribir "Ingrese el recibo que desea pagar: "
    Escribir "1. Arriendo"
    Escribir "2. Luz"
    Escribir "3. Gas"
    Escribir "4. Agua"
    Escribir "5. Telefonia"
    Leer opcion
    
	Si opcion = 1 Entonces
        Escribir "Ingrese el valor del arriendo:"
        Leer C_arriendo
        TotalPago <- C_arriendo
    Sino Si opcion = 2 Entonces
			Escribir "Ingrese el valor de la luz:"
			Leer R_luz
			TotalPago <- R_luz
		FinSi
		
		Si opcion = 3 Entonces
			Escribir "Ingrese el valor del gas:"
			Leer R_gas
			TotalPago <- R_gas
		FinSi
		
		Si opcion = 4 Entonces
			Escribir "Ingrese el valor del agua:"
			Leer R_agua
			TotalPago <- R_agua
		FinSi
		
		Si opcion = 5 Entonces
			Escribir "Ingrese el valor de la telefonia:"
			Leer P_telefonia
			TotalPago <- P_telefonia
		FinSi
		
		Escribir "Ingrese el número de su tarjeta de débito:"
		Leer NumTarjeta
		
		Escribir "Ingrese el código de seguridad (CVV):"
		Leer CVV
		
		Escribir "Total a pagar: ", + TotalPago
		Escribir "Pagado con éxito con tarjeta de débito ", + NumTarjeta
	FinSi
	
	Escribir "Valor del arriendo es: "
	leer C_arriendo
	
	Escribir  "¿Qué recibo desea pagar? luz, agua, gas, telefonia"
	leer recibo
	
	si recibo es igual a "luz" entonces
		imprimir "Ha seleccionado el recibo de luz. Por favor, ingrese el monto a pagar."
		leer R_luz
		
	SiNo si recibo es igual a "gas" entonces
			imprimir "Ha seleccionado el recibo de gas. Por favor, ingrese el monto a pagar."
			leer R_gas
			
		Sino si recibo es igual a "agua" entonces
				imprimir "Ha seleccionado el recibo de agua. Por favor, ingrese el monto a pagar."
				leer R_agua
				
			Sino si recibo es igual a "telefonia" entonces
					imprimir "Ha seleccionado el recibo de telefonia. Por favor, ingrese el monto a pagar."
					leer P_telefonia
				FinSi
			FinSi
		FinSi	
	FinSi
	
	RL<-R_L (R_luz)
	RG<-R_G (R_gas)
	RA<-R_A (R_agua)
	PT<-P_T (P_telefonia)
	
	escribir "La familia perez debe pagar: ",RL," de la luz "
	escribir "La familia perez debe pagar: ",RG, " del gas "
	escribir "La familia perez debe pagar: ",RA," del agua "
	escribir "La familia perez debe pagar: ",PT, " de la telefonia "
	
	Escribir " El total de á pagar con el arriendo incluido es de: " X(RL,RG,RA,PT,C_arriendo) "$" 
	
	
FinAlgoritmo
Función pago1<-R_L ( R_luz )
pago1<-R_luz*0.4

FinFunción

Función pago2<-R_G ( R_gas )
pago2<-R_gas*0.5
FinFunción
Función pago3<-R_A ( R_agua )
pago3<-R_agua*0.5
FinFunción
Función pago4<-P_T ( P_telefonia )
pago4<-P_telefonia*1
FinFunción
Función Total_X<-X ( RL, RG, RA, PT, C_arriendo )
Total_X<-RL+RG+RA+PT+C_arriendo
FinFunción
