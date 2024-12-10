import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class ParaulesLlargaCurtes {
/*
mostrar la paraula més llarga i la paraula més curta d'un text introduït per l'entrada estàndard. En cas d'haver més d'una paraula més llarga cal mostrar-les totes en ordre d'aparició i en cas d'haver més d'una paraula més curta cal mostrar-les totes en ordre alfabètic descendent.
*/
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Introdueix un text:");

        // Llegir la línia completa
        String text = scanner.nextLine().trim();

        // Dividir el text en paraules
        String[] paraules = text.split("\\s+");

        // Inicialitzar variables per a les paraules més llargues i més curtes
        List<String> paraulesMesLlarges = new ArrayList<>();
        List<String> paraulesMesCurtes = new ArrayList<>();
        int maxLlarga = 0;
        int minCurt = Integer.MAX_VALUE;

        // Trobar longituds màximes i mínimes
        for (String paraula : paraules) {
            int longitud = paraula.length();

            // Trobar la longitud màxima
            if (longitud > maxLlarga) {
                maxLlarga = longitud;
                paraulesMesLlarges.clear(); // Esborrar les anteriors si trobem una nova màxima
                paraulesMesLlarges.add(paraula); // Afegir la nova paraula més llarga
            } else if (longitud == maxLlarga) {
                paraulesMesLlarges.add(paraula); // Afegir la paraula igual de llarga
            }

            // Trobar la longitud mínima
            if (longitud < minCurt) {
                minCurt = longitud;
                paraulesMesCurtes.clear(); // Esborrar les anteriors si trobem una nova mínima
                paraulesMesCurtes.add(paraula); // Afegir la nova paraula més curta
            } else if (longitud == minCurt) {
                paraulesMesCurtes.add(paraula); // Afegir la paraula igual de curta
            }
        }

        // Ordenar les paraules més curtes en ordre alfabètic descendent
        Collections.sort(paraulesMesCurtes, Collections.reverseOrder());

        // Mostrar resultats
        System.out.println("Les paraules més llargues són: " + paraulesMesLlarges);
        System.out.println("Les paraules més curtes són: " + paraulesMesCurtes);

        scanner.close();
    }
}
