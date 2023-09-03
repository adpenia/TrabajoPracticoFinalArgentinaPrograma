Algoritmo reciboDeSueldo
	ANOACTUAL <- 2023
	mesActual <- 09
	Escribir ' '
	Escribir '///////////////////////////////////////////////////////////////////////'
	Escribir '///////////////////////////////////////////////////////////////////////'
	Escribir '////      Bienvenido al sistema de liquidacion de sueldo           ////'
	Escribir '///////////////////////////////////////////////////////////////////////'
	Escribir '///////////////////////////////////////////////////////////////////////'
	Escribir ' '
	Repetir
		// Le pedimos que ingrese el sueldo bruto
		Escribir 'Ingrese el sueldo bruto del empleado que desea liquidar'
		Leer sueldoBruto
		// CALCULAMOS LA antiguedad del empleado
		Escribir 'Debe ingresar la fecha de ingreso a la compañia del empleado'
		Escribir 'Ingrese la fecha en el formato MM/AAAA'
		Leer fechita
		mestrabajo <- Subcadena(fechita,0,2)
		ANOTRABAJO <- Subcadena(fechita,4,7)
		mesTrabajook <- ConvertirANumero(mestrabajo)
		ANOTRABAJOOK <- ConvertirANumero(ANOTRABAJO)
		// CALCULAMOS CUANTOS AÑOS TIENE TRABAJADOS
		ANOS <- ANOACTUAL-ANOTRABAJOOK
		// CALCULAMOS CUANTOS MESES TIENE
		meses <- mesActual-mesTrabajook
		// CALCULAMOS LA ANTIGUEDAD QUE HAY QUE PAGARLE 
		Si meses>=3 Entonces
			antiguedad <- ANOS+1
		SiNo
			antiguedad <- ANOS
		FinSi
		// CALCULAMOS si le corresponde la asistencia
		Escribir 'Ingrese si tiene la asistencia completa'
		Escribir '1. Asistencia completa'
		Escribir '2. Asistencia incompleta'
		Leer asistencia
		Si asistencia=1 Entonces
			presentismo <- sueldoBruto*0.03
		SiNo
			presentismo <- 0
		FinSi
		jubilacion <- 0.11
		obraSocial <- 0.06
		antiguedadNeta <- sueldoBruto*antiguedad/100
		obraSocialNeta <- sueldoBruto*obraSocial
		impuestosNeto <- sueldoBruto*jubilacion
		sueldoNeto <- sueldoBruto*(1-jubilacion)+presentismo+antiguedadNeta
		Escribir '///////////////////////////////////////////////////////////////////////'
		Escribir '//                          Recibo de sueldo                         //'
		Escribir '///////////////////////////////////////////////////////////////////////'
		Escribir '//       Concepto                                          Monto     //'
		Escribir '///////////////////////////////////////////////////////////////////////'
		Escribir '//                     Componentes remulnerativos                    //'
		Escribir '///////////////////////////////////////////////////////////////////////'
		Escribir '//       Salario Bruto ______________________________    $', sueldoBruto, '     //'
		Escribir '//       Jubilacion _________________________________   -$', impuestosNeto, '      //'
		Escribir '//       Obra Social ________________________________   -$', obraSocialNeta, '      //'
		Escribir '///////////////////////////////////////////////////////////////////////'
		Escribir '//                    Componentes no remulnerativos                  //'
		Escribir '///////////////////////////////////////////////////////////////////////'
		Escribir '//       Presentismo ________________________________    $', presentismo, '       //'
		Escribir '//       Antiguedad _________________________________    $', antiguedadNeta, '       //'
		Escribir '///////////////////////////////////////////////////////////////////////'
		Escribir '///////////////////////////////////////////////////////////////////////'
		Escribir '//       Salario Neto _______________________________    $', sueldoNeto, '      //'
		Escribir '///////////////////////////////////////////////////////////////////////'
		Escribir ''
		Escribir ''
		Escribir ''
		Escribir '¿Desea liquidar un nuevo recibo de sueldo?'
		Escribir '1. Para liquidar un nuevo recibo'
		Escribir '2. Para salir del sistema'
		Leer exit
	Hasta Que exit=2
FinAlgoritmo
