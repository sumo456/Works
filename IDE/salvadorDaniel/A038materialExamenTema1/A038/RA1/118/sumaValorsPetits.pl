% Definim fets per representació de nombres
nombre(1).
nombre(2).
nombre(3).
nombre(4).
nombre(5).
nombre(6).
nombre(7).
nombre(8).
nombre(9).
nombre(10).

% Regla per sumar dos nombres
suma(X, Y, S) :-
    nombre(X),
    nombre(Y),
    S is X + Y.


