# Anlegen der Variablen
var f integer >=2; # Feuerwehrauto (mind 2 x)
var t integer >=2; # Taxi (mind 2 x)
var h integer >=2; # Helikopter (mind 2 x)

# Angabe der Zielfunktion. 
# Die Zielfunktion setzt sich zusammen aus der Forderung, den Nutzen zu maximieren und nicht verwendete Steine (500 - verwendete Steine) mit dem Faktor 2 zu subtrahieren, d.h.
# maximize ZF: 50 * f + 25 * t + 40 * h - 2 * (500 - ((18 + 3 + 8) * f + (4 + 16 + 6)  * t + (7 + 8 + 19) * h)), d.h.
# maximize ZF: 50 * f + 25 * t + 40 * h - 2 * (500 - (29 * f + 26 * t + 34 * h)), d.h.
# maximize ZF: 50 * f + 25 * t + 40 * h - 1000 + 58 * f + 52 * t + 68 * h, d.h
maximize ZF: 108 * f + 77 * t + 108 * h - 1000; 

subto NB1: 18 * f + 4 * t + 7 * h <= 160; # Restriktion, dass maximal 160 rote Steine verbaut werden dürfen
subto NB2: 3 * f + 16 * t + 8 * h <= 140; # Restriktion, dass maxmimal 140 gelbe Steine verbaut werden dürfen
subto NB3: 8 * f + 6 * t + 19 * h <= 200; # Restriktion, dass maximal 200 blaue Steine verbaut werden dürfen
subto NB4: 17 * f + 13 * t + 19 * h <= 240; # Restriktion, dass nur 4 Stunden Zeit zur Verfügung steht

