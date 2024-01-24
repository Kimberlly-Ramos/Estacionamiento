Algoritmo Estacionamiento 
	
    Definir total_cobrar, monto_pagado, cambio, moneda_10, moneda_5, moneda_2, moneda_1 Como Entero
	
	monedas10 <- 0
    monedas5 <- 0
    monedas2 <- 0
    monedas1 <- 0
	
	Escribir "Ingrese el total a cobrar por el estacionamiento: "
    Leer total_cobrar 
	
	Mientras total_cobrar <= 0 Hacer
		Escribir "Ingresa un valor valido. "
		Leer total_cobrar
	FinMientras
	
	Escribir "Ingrese el monto que paga el cliente: "
    Leer monto_pagado
	
	Mientras monto_pagado <= 0 Hacer
		Escribir "Ingresa un valor valido. "
		Leer monto_pagado
	FinMientras
	
	
	cambio <- monto_pagado - total_cobrar
	
	Escribir "Cambio a entregar: ", cambio
	
	Si cambio < 0 Entonces
		Escribir "El monto pagado es insuficiente"
	Sino
		
		Mientras cambio >= 10 Hacer
			cambio <- cambio - 10
			monedas10 <- monedas10 + 1
		FinMientras
		
		Mientras cambio >= 5 Hacer
			cambio <- cambio - 5
			monedas5 <- monedas5 + 1
		FinMientras
		
		Mientras cambio >= 2 Hacer
			cambio <- cambio - 2
			monedas2 <- monedas2 + 1
		FinMientras
		
		Mientras cambio >= 1 Hacer
			cambio <- cambio - 1
			monedas1 <- monedas1 + 1
		FinMientras
		
		Escribir "Monedas de 10 pesos: ", monedas10
		Escribir "Monedas de 5 pesos: ", monedas5
		Escribir "Monedas de 2 pesos: ", monedas2
		Escribir "Monedas de 1 peso: ", monedas1
		Escribir "Total de monedas: ", monedas10 + monedas5 + monedas2 + monedas1
	FinSi

	
FinAlgoritmo
