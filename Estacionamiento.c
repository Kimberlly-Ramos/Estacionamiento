#include <stdio.h>

int main() {
    int total_cobrar, monto_pagado, cambio, monedas10 = 0, monedas5 = 0, monedas2 = 0, monedas1 = 0;

    printf("Ingrese el total a cobrar por el estacionamiento: ");
    scanf("%d", &total_cobrar);

    while (total_cobrar <= 0) {
        printf("Ingresa un valor valido. ");
        scanf("%d", &total_cobrar);
    }

    printf("Ingrese el monto que paga el cliente: ");
    scanf("%d", &monto_pagado);

    while (monto_pagado <= 0) {
        printf("Ingresa un valor valido. ");
        scanf("%d", &monto_pagado);
    }

    cambio = monto_pagado - total_cobrar;

    printf("Cambio a entregar: %d\n", cambio);

    if (cambio < 0) {
        printf("El monto pagado es insuficiente\n");
    } else {
        while (cambio >= 10) {
            cambio -= 10;
            monedas10++;
        }

        while (cambio >= 5) {
            cambio -= 5;
            monedas5++;
        }

        while (cambio >= 2) {
            cambio -= 2;
            monedas2++;
        }

        while (cambio >= 1) {
            cambio -= 1;
            monedas1++;
        }

        printf("Monedas de 10 pesos: %d\n", monedas10);
        printf("Monedas de 5 pesos: %d\n", monedas5);
        printf("Monedas de 2 pesos: %d\n", monedas2);
        printf("Monedas de 1 peso: %d\n", monedas1);
        printf("Total de monedas: %d\n", monedas10 + monedas5 + monedas2 + monedas1);
    }

    return 0;
}
