       IDENTIFICATION DIVISION.
       PROGRAM-ID. CalculadoraSimple.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Num1            PIC 9(5).
       01  Num2            PIC 9(5).
       01  Resultat        PIC 9(5).
       01  Opcio           PIC 9.
       01  Missatge        PIC X(50).

       PROCEDURE DIVISION.
       Inici.
           DISPLAY "Calculadora Simple".
           DISPLAY "==================="
           PERFORM UNTIL Opcio = 5
               DISPLAY "Introdueix dos números:"
               ACCEPT Num1
               ACCEPT Num2
               DISPLAY "Opcions:"
               DISPLAY "1. Sumar"
               DISPLAY "2. Restar"
               DISPLAY "3. Multiplicar"
               DISPLAY "4. Dividir"
               DISPLAY "5. Sortir"
               ACCEPT Opcio

               EVALUATE Opcio
                   WHEN 1
                       ADD Num1 TO Num2 GIVING Resultat
                       MOVE "Suma: " TO Missatge
                       DISPLAY Missatge Resultat
                   WHEN 2
                       SUBTRACT Num2 FROM Num1 GIVING Resultat
                       MOVE "Resta: " TO Missatge
                       DISPLAY Missatge Resultat
                   WHEN 3
                       MULTIPLY Num1 BY Num2 GIVING Resultat
                       MOVE "Multiplicació: " TO Missatge
                       DISPLAY Missatge Resultat
                   WHEN 4
                       IF Num2 = 0 THEN
                           DISPLAY "Error: Divisió per zero no permesa."
                       ELSE
                           DIVIDE Num1 BY Num2 GIVING Resultat
                           MOVE "Divisió: " TO Missatge
                           DISPLAY Missatge Resultat
                       END-IF
                   WHEN OTHER
                       DISPLAY "Opció no vàlida."
               END-EVALUATE
           END-PERFORM.

           DISPLAY "Has sortit de la calculadora."
           STOP RUN.
