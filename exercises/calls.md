# Sincrono / Asincrono
En esta sección vamos a realizar ejercicios con llamadas y su gestión

## 📝 Ejercicios
[Crea una llamada con URLSession.shared.dataTask](#Ejercicio-1)

[Crea una llamada con URLSession.shared.data](#Ejercicio-2)

[Soluciona el ejercicio](#Ejercicio-3)

[Solucion async await](#Ejercicio-4)

[Lanza 2 llamadas secuenciales](#Ejercicio-5)

[Lanza 2 llamadas a la vez](#Ejercicio-6)

### Ejercicio 1

Crea una función que haga una llamada a `api.coincap.io/v2/assets` con `URLSession.shared.dataTask` y devuelva un array de crypto 

### Ejercicio 2

Crea una función que haga una llamada a `api.coincap.io/v2/assets` con `URLSession.shared.data` y devuelva un array de crypto 

### Ejercicio 3

Como solucionarías este ejercicio para que el output deseado sea:
```
> "Hey, how are you?"
> "Responding takes a while..."
> "RESPONSE: Hi, I'm doing really good."
```

```
func questionAndAnswer() {
    print("Hey, how are you?") // you ask how are you
  
    // It takes 2 seconds for your friend to answer:
    DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
        "Hi, I'm doing really good."
    })
  
    print("Responding takes a while...")
}
questionAndAnswer({ response in
    print("RESPONSE: \(response)") // print the response that arrives later
})
```

### Ejercicio 4

Coge el ejercicio anterior y conviertelo a async await para que el output deseado sea:
```
> "Hey, how are you?"
> "Responding takes a while..."
> "RESPONSE: Hi, I'm doing really good."
```

### Ejercicio 5

Haz una función que lance estas 2 llamadas de forma secuencial cuando acabe una y después otra
```
api.coincap.io/v2/assets/bitcoin
api.coincap.io/v2/assets/ethereum
```

### Ejercicio 6

Haz una función que lance estas 2 llamadas a la vez
```
api.coincap.io/v2/assets/bitcoin
api.coincap.io/v2/assets/ethereum
```

![Rudo](../README/rudo.png)

**Develop by rudo apps**

hola@rudo.es | https://www.rudo.es