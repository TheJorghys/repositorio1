Algoritmo ARRIENDO
	definir C_arriendo Como real
	definir R_luz Como real
	Definir R_gas como real
	definir R_agua Como Real
	definir P_telefonia Como Real
	Definir contrasena, ingreso_contrasena Como Cadena
	
	
	contrasena <- "12345"
	
	Escribir "Ingrese la contraseña para efectuar el pago : "
	
	Leer contra
	
	Si contrasena = contra Entonces
		Escribir "Contraseña correcta. Ingresando al sistema..."
		
	Sino
		Escribir "Contraseña incorrecta. Vuelva a intentarlo."
	Fin Si
	
	
	
	Escribir "Valor del arriendo es: "
	leer C_arriendo
	Escribir "El valor del recibo del la luz es: "
	leer R_luz
	Escribir "El valor del recibo del gas es: "
	leer R_gas
	Escribir "El valor del recibo del agua es: "
	leer R_agua
	Escribir "El valor del recibo de telofonia es: "
	leer P_telefonia

	RL<-R_L (R_luz)
	RG<-R_G (R_gas)
	RA<-R_A (R_agua)
	PT<-P_T (P_telefonia)
	escribir "La familia perez debe pagar: ",RL," de la luz "
	escribir "La familia perez debe pagar: ",RG, " del gas "
	escribir "La familia perez debe pagar: ",RA," del agua "
	escribir "La familia perez debe pagar: ",PT, " de la telefonia "
	
	Escribir " El total de ápagar con el arriendo incluido es de: " X(RL,RG,RA,PT,C_arriendo) "$" 
	
	
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
