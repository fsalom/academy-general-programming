# Situaciones especiales
En esta secci贸n vamos a tratar con algunos problemas curiosos que han sucedido o que podr铆an suceder.

## 馃摑 Situaciones
[Precarga con llamadas](#Situaci贸n-1)

[Precarga con llamadas (secundario)](#Situaci贸n-2)

["Cartuchos" de pago](#Situaci贸n-3)

[Modificaci贸n sin recargar llamada](#Situaci贸n-4)

[Soluciona este c贸digo](#Situaci贸n-5)

### Situaci贸n 1
Tenemos un array de X objetos crypto y debido a la situacion deben realizarse X llamadas de detalle para poder obtener la informaci贸n adicional durante el proceso de carga de un splash. Estas llamadas pueden dar error. 驴Como realizar铆as la carga para tener el control en todo momento de cuando se han cargado toda la informaci贸n para quitar el splash y entrar en la home?

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


El detalle (http://larutaquesea.com/crypto/{id}) proporciona:  Precio, capitalizaci贸n, sube o baja
```

### Situaci贸n 2
Basandote en el ejercicio 1 pero suponiendo que la versi贸n de ios es la 10 y hay cosas que no est谩n disponibles por tanto deber谩s usar completion.

### Situaci贸n 3
Crea un funci贸n **pay** que reciba un m贸dulo de pago. Este m贸dulo de pago definir谩 como se va a pagar (stripe, redsys, efectivo, contrareembolso ... etc) y tendr谩 como funci贸n pay que ejecute el pago (el pago es figurado basta con poner un print)

Completa la informaci贸n
```
func payMyOrder(with payment: ){
	payment.pay()
}


payMyOrder(with: )
```

### Situaci贸n 4
Recogemos de una llamada informaci贸n de un listado de usuarios en un UserDTO y lo mostramos en un tableview. Al pulsar vamos al detalle del usuario que nos permite modificar los datos y al volver queremos que el listado se actualice con la informaci贸n modificada pero sin volver a llamar al servidor. 驴C贸mo lo har铆as?
```
El array de UserDTO ser铆a esta:
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

### Situaci贸n 5

Bajate este ejercicio: [Descargar](../solve/special_5).

Contexto. Este ejercicio carga una lista de crypto monedas al pulsar en una de las celdas carga un viewcontroller durante 2 segundos cambia el nombre de la moneda por "moneda cambiada" y recarga el listado de crypto monedas.

Tienes que hacer que recargue el nombre cambiado en el listado una vez pulsado


![Rudo](../README/rudo.png)

**Develop by rudo apps**

hola@rudo.es | https://www.rudo.es