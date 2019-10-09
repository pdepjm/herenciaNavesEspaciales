# Naves Espaciales

En un futuro distante, donde las actividades se derrollan en un ambiente interplanetario, nos piden un sistema que modele distintas naves y su comportamiento ante una amenaza.

### Las naves

De las naves conocemos su velocidad, medida en _kms/seg_; y, por ahora, nos pidieron modelar los siguientes tipos:

- **Naves de carga**: nos interesa saber la masa de la carga que está transportando, medida en kg. Se desea saber si la nave está sobrecargada, que sucede cuando su carga excede 100 toneladas; y si está excedida de velocidad. La velocidad máxima a la que puede ir este tipo de naves es de 100.000 kms/seg. Cuando estas naves reciben una amenaza se deshacen de toda su carga, dejándola vacía.

- **Naves de pasajeros**: lleva consiguo una determinada cantidad de pasajeros + 4 personas destinadas a ser personal de la nave. Cuando estas naves reciben una amenaza simplemente activan su alarma en caso de emergencia. Se desea conocer la velocidad máxima a la que puede viajar, que es de 300.000 kms/seg divido la cantidad de personas dentro de la nave (pasajeros + personal de la nave), además se descuenta 200 kms/seg más si hay más de 100 pasajeros, por cuestiones de seguridad. Y saber si la nave está en peligro, que sucede cuando va más rápido que su velocidad máxima o la alarma en caso de emergencia está encendida.

- **Naves de combate**: pueden emitir mensajes y tiene 2 modos: _en reposo_ o _ataque_. Sabemos que al viajar a menos de 10.000 kms/seg y estar en modo ataque la nave pasa a estar invisible para los enemigos. Al recibir una amenaza, si está en reposo emite el mensaje `"¡RETIRADA!"` y el modo ataque emite el mensaje `"Enemigo encontrado"`.


## Extendiendo el dominio

Nos piden extender el sistema anterior para agregar nuevas funcionalidades.

1) Hacer que todas las naves se puedan _propulsar_, esto aumenta su velocidad en 20.000 kms/seg, pero nunca puede superar los 300.000 kms/seg, siendo este su máximo alcanzable.

2) Aparecen un nuevo tipo de nave, las de **carga de residuos redioactivos**. Estas son como cualquier cualquier nave de carga común, solo que pueden sellarse al vacío para evitar desparramar residuos radioactivos por todo el espacio. Por esto mismo, al recibir una amenaza no deben liberar su carga, sino que se frenan (reduciendo su velocidad a 0) dispuestos a entregar la nave.

3) Hacer que todas las naves se puedan preparar para viajar. Esto hace que aumenten su velocidad 5.000 kms/seg (teniendo la restricción de la velocidad máxima posible). Además de eso,
  - las naves que cargan residuos radioactivos se cierran al vacío.
  - y las de combate, si se encuentran en modo ataque emiten el mensaje `"Volviendo a la base"`, mientras que si están en reposo emiten el mensaje `"Saliendo en misión"` y se ponen en modo ataque.
  
4) Hacer que una nave se encuentre con un enemigo. Esto les hace recibir una amenaza, sufriendo los efectos particulares de cada nave, y luego se propulsan para intentar escapar.
