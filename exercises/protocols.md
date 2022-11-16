# Gestión de protocolos / interfaces
En esta sección vamos a realizar ejercicios para utilizar protocolos

## 📝 Ejercicios
[Crea tu primer protocolo](#Ejercicio-1)

[Crea un segundo protocolo con otra fuente](#Ejercicio-2)


### Ejercicio 1

Crea tu primer protocolo. El ejercicio consiste en crear una pantalla con un label y vamos a inyectar a la actividad/controlador un protocolo llamado ApiProtocol/ ApiInterface que debe de implementar la función getFirstName que devolverá el nombre (String) del primer elemento de una fuente de datos. Una vez hecho esto crearemos una clase que implementará este protocolo y que deberá devolver el nombre del primer personaje de la api de personajes de rick y morty. Por último pinta ese string en el label.

1- Crea el protocolo ApiProtocol/ApiInterface

2- Crea el protocolo para la función getFirstName que devuelva el nombre

3- Crea la clase que herede de dicho protocolo e implementa la función para que obtenga el nombre del primer personaje
```
https://rickandmortyapi.com/api/character
```
4- Pinta el nombre en el String


### Ejercicio 2

Crea una segunda clase que herede del mismo protocolo pero esta vez devuelve el nombre de la primera criptomoneda que obtengas de
```
https://api.coincap.io/v2/assets
```
y repite el proceso de mostrar el texto en el label

![Rudo](../README/rudo.png)

**Develop by rudo apps**

hola@rudo.es | https://www.rudo.es