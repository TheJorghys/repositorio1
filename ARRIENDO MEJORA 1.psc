Algoritmo ARRIENDO
	definir C_arriendo Como real
	definir R_luz Como real
	Definir R_gas como real
	definir R_agua Como Real
	definir P_telefonia Como Real
	Definir contrasena, ingreso_contrasena, recibo Como Cadena
	
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
