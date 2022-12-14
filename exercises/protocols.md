# Gesti贸n de protocolos / interfaces
En esta secci贸n vamos a realizar ejercicios para utilizar protocolos

## 馃摑 Ejercicios
[Crea tu primer protocolo](#Ejercicio-1)

[Crea tu primera fuente de datos](#Ejercicio-2)

[Crea una segunda fuente de datos](#Ejercicio-3)

### Ejercicio 1

Crea un protocolo que tenga una funcion que se llame sayHi no tendr谩 ni par谩metros ni devolver谩 nada. 
Ahora crea 2 clases que hereden del nuevo protocolo una se llamara Spanish y otra English en cada una de ellas
en la funci贸n sayHi printea "hola" en cada idioma. Ahora testea tu clase con este c贸digo:

```
func sayHello(in language: HiProtocol ) {
	 language.sayHi()
}
let spanish = Spanish()
let english = English()
sayHello(in: spanish)
sayHello(in: english)

//Hola
//Hello
```


### Ejercicio 2

El ejercicio consiste en crear una pantalla con un label y vamos a inyectar a la actividad/controlador un protocolo llamado ApiProtocol/ ApiInterface que debe de implementar la funci贸n getFirstName que devolver谩 el nombre (String) del primer elemento de una fuente de datos. Una vez hecho esto crearemos una clase que implementar谩 este protocolo y que deber谩 devolver el nombre del primer personaje de la api de personajes de rick y morty. Por 煤ltimo pinta ese string en el label.

1- Crea el protocolo ApiProtocol/ApiInterface

2- Crea el protocolo para la funci贸n getFirstName que devuelva el nombre

3- Crea la clase que herede de dicho protocolo e implementa la funci贸n para que obtenga el nombre del primer personaje
```
https://rickandmortyapi.com/api/character
```

4- A帽adir vuestro controlador esta funci贸n:
```
func giveMeTheName(through protocol: ApiProtocol ) -> String {
	return protocol.getFirstName()
}
```

5- Pinta el nombre en el String llamando al texto de vuestro label como:

```
label.text = giveMeTheName(through: ____)
```

### Ejercicio 3

Crea una segunda clase que herede del mismo protocolo pero esta vez devuelve el nombre de la primera criptomoneda que obtengas de
```
https://api.coincap.io/v2/assets
```
y repite el proceso de mostrar el texto en el label

### Ejercicio 4

Crea una tabla que contenga X celdas. Crea en cada celda un bot贸n que al pulsarse recargue la tabla (reloadData) y cambie el color de fondo de la tabla. 

![Rudo](../README/rudo.png)

**Develop by rudo apps**

hola@rudo.es | https://www.rudo.es