import java.util.Scanner;

public class SumaNombresPrimers {

    // Mètode per comprovar si un número és primer
    public static boolean esPrimer(int num) {
        if (num <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                return false;
            }
        }
        return true;
    }

    // Mètode per calcular la suma de nombres primers menors que un nombre donat
    public static int sumaPrimsMenors(int limite) {
        int suma = 0;
        for (int i = 2; i < limite; i++) {
            if (esPrimer(i)) {
                suma += i;
            }
        }
        return suma;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Introdueix un nombre: ");
        int numero = scanner.nextInt();

        int sumaPrims = sumaPrimsMenors(numero);
        System.out.println("La suma de tots els nombres primers menors que " + numero + " és: " + sumaPrims);
    }
}
