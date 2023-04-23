# Situaciones especiales
En esta sección vamos a tratar con algunos problemas curiosos que han sucedido o que podrían suceder.

## 📝 Situaciones
[Precarga con llamadas](#Situación-1)

[Precarga con llamadas (secundario)](#Situación-2)

["Cartuchos" de pago](#Situación-3)

[Modificación sin recargar llamada](#Situación-4)

[Soluciona este código](#Situación-5)

### Situación 1
Tenemos un array de X objetos crypto y debido a la situacion deben realizarse X llamadas de detalle para poder obtener la información adicional durante el proceso de carga de un splash. Estas llamadas pueden dar error. ¿Como realizarías la carga para tener el control en todo momento de cuando se han cargado toda la información para quitar el splash y entrar en la home?

```
Ejemplo:
[
	{
		id: 1,
		name: bitcoin
	},
	{
		id: 2,
		name: ethereum
	},
	{
		id: 3,
		name: cardano
	}
]


El detalle (http://larutaquesea.com/crypto/{id}) proporciona:  Precio, capitalización, sube o baja
```

### Situación 2
Basandote en el ejercicio 1 pero suponiendo que la versión de ios es la 10 y hay cosas que no están disponibles por tanto deberás usar completion.

### Situación 3
Crea un función **pay** que reciba un módulo de pago. Este módulo de pago definirá como se va a pagar (stripe, redsys, efectivo, contrareembolso ... etc) y tendrá como función pay que ejecute el pago (el pago es figurado basta con poner un print)

Completa la información
```
func payMyOrder(with payment: ){
	payment.pay()
}


payMyOrder(with: )
```

### Situación 4
Recogemos de una llamada información de un listado de usuarios en un UserDTO y lo mostramos en un tableview. Al pulsar vamos al detalle del usuario que nos permite modificar los datos y al volver queremos que el listado se actualice con la información modificada pero sin volver a llamar al servidor. ¿Cómo lo harías?
```
El array de UserDTO sería esta:
[
	UserDTO(name: "Fer", email:"fer@rudo.es"),
	UserDTO(name: "Jesus", email:"jesus@rudo.es"),
	UserDTO(name: "Antonio", email:"antonio@rudo.es"),
	UserDTO(name: "Carlos", email:"carlos@rudo.es")
]

Queremos mandar al detalle:
- UserDTO(name: "Fer", email:"fer@rudo.es") 
Modificarlo: 
- UserDTO(name: "Fer", email:"nuevomail@rudo.es")
```

### Situación 5

Bajate este ejercicio: [Descargar](../ios/solve/special_5).

Contexto. Este ejercicio carga una lista de crypto monedas al pulsar en una de las celdas carga un viewcontroller durante 2 segundos cambia el nombre de la moneda por "moneda cambiada" y recarga el listado de crypto monedas.

Tienes que hacer que recargue el nombre cambiado en el listado una vez pulsado


![Rudo](../README/rudo.png)

**Develop by rudo apps**

hola@rudo.es | https://www.rudo.es