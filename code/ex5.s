    SETI R0, #0
    SETI R1, #0

    @ Bornes de la map
    INVOKE 1, 8, 9
    SUB R8, R8, R1
    SUB R8, R9, R1

    @ Initialisation du pointeur
    SETI R2, #0
    SETI R3, #0

    @ Variable programme
    SETI R4, #0 @ Case courante
    SETI R5, #0 @ Somme voisins
    SETI R6, #0 @ Case adjacente


@ Line loop
L1:
    @ Reset de variables
    SETI R5, #0

    INVOKE 3, 2, 3 @ Placement du pointeur
    INVOKE 5, 4, 0 @ Recuperation de la valeur sur pointeur
    goto_eq L2, R4, R0 @ Si la case est egale a 0
    INOKE 5, 6, ADD R5, R5
    goto L4

L2 :
    INVOKE 4, 1, 0 @ Mettre le pointeur a 1
    goto L4

L3:


Lvoisin:
