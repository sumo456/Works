      PROGRAM SUMA_NUMEROS
      INTEGER N, I, SUMA

      PRINT *, 'Introdueix un nombre enter N:'
      READ *, N

      SUMA = 0

      DO 10 I = 1, N
         SUMA = SUMA + I
10    CONTINUE

      PRINT *, 'La suma dels primers ', N, ' nombres és: ', SUMA

      END

