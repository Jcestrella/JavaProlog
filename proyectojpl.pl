problema('virus').
problema('memoria').
problema('fuente_poder').
problema('disco_duro').
problema('procesador').

problemade('no enciende','memoria').
problemade('pitidos','memoria').
problemade('mensajes de errores','memoria').
problemade('reinicio','memoria').
problemade('lentitud','memoria').
problemade('pantalla azul','memoria').

problemade('no enciende','fuente_poder').
problemade('demora apagar','fuente_poder').
problemade('ventilador','fuente_poder').
problemade('reinicio','fuente_poder').

problemade('ruido','disco_duro').
problemade('lenta','disco_duro').
problemade('error al quemar cd','disco_duro').
problemade('reinicio','disco_duro').
problemade('pantalla azul','disco_duro').
problemade('activa el scandisk','disco_duro').
problemade('error al guardar','disco_duro').

problemade('bloquea aplicaciones','procesador').
problemade('lenta','procesador').
problemade('pantalla azul','procesador').
problemade('bajo rendimiento','procesador').

problemade('lenta','virus').
problemade('duplica archivos','virus').
problemade('ventanas no abren','virus').
problemade('programas no abren','virus').
problemade('memoria llena','virus').
problemade('eliminacion de archivos','virus').
problemade('mensaje de errores','virus').

soluciones('ifdisk','disco_duro').
soluciones('ycandisk','disco_duro').
soluciones('norton utilitier disk editor','disco_duro').
soluciones('revision y limpieza','disco_duro').

soluciones('cambiar a otra ranura','memoria').
soluciones('limpieza','memoria').
soluciones('zocalos no rotos','memoria').
soluciones('entabilizador de voltaje','memoria').

soluciones('electricidad en la toma de corriente','fuente_poder').
soluciones('revise voltaje','fuente_poder').
soluciones('revisar el conector principal que este conectada a la tarjeta madre','fuente_poder').
soluciones('revision del cable de poder','fuente_poder').
soluciones('cambie fusible','fuente_poder').
soluciones('limpieza','fuente_poder').

soluciones('antivirus nod32','virus').
soluciones('antivirus enet','virus').
soluciones('antivirus panda','virus').
soluciones('antivirus avast','virus').

soluciones('revisar la temperatura','procesador').
soluciones('reducir la temperatura de la carcaza','procesador').
soluciones('revisar la rotacion del ventilador','procesador').

sintoma(X):- problemade(X,Z),write(Z),nl,fail.
sintomas(Y):-problemade(Z,Y),write(Z),nl,fail.

solucion(P):-soluciones(S,P),write(S),nl,fail.
