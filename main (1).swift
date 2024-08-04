var aux:String = ""
var opcionIngresada:String = aux
var saldoTotal: Double = 0.0

  func deposito() {
    print("Ingrese la cantidad a depositar: ")
    aux = readLine()!
    opcionIngresada = aux
    let cantidadDepositada = Double(opcionIngresada) ?? 0.0
    saldoTotal = saldoTotal + cantidadDepositada
    if cantidadDepositada != 0.0 {
      print("La cantidad depositada con exitoso fue por $ \(cantidadDepositada)")
    } else {
      print("Error al realizar el deposito, por favor intente de nuevo")
    }
  }

  func retiro() {
    print("Ingrese la cantidad de su retiro: ")
    aux = readLine()!
    opcionIngresada = aux
    let catidadRetirar = Double(opcionIngresada) ?? 0.0
    if catidadRetirar > saldoTotal{
      print("Lo sentimos,No cuenta con el saldo suficiente para realizar el retiro!")
      print("\n")
      print("¿Desea realizar otra operacion? s/S n/N")

      aux = readLine()!
      opcionIngresada = aux

      if opcionIngresada == "n" || opcionIngresada == "N" {
        opcionIngresada = "4"
        print("!Gracias por usar su cajero Bancoppel, vuelva pronto¡")
      }    
    } else {
      saldoTotal = saldoTotal - catidadRetirar
      print("R e t i r o e x i t o s o p o r $\(catidadRetirar) pesos")
    }
  }

while opcionIngresada != "4" {
  print("\n")
  print ("----- BANCOPPEL ------")
  print("\n")
  print ("1.- Deposito")
  print ("2.- Retiro")
  print ("3.- Saldo")
  print ("4.- salir")
  print("\n")
  print("Elija su opcion que desea realizar")
  aux = readLine()!
  opcionIngresada = aux

  switch opcionIngresada {
    case "1":
    deposito()
    print("¿Usted desea realizar otro deposito? (S/N)")
    aux = readLine()!
    opcionIngresada = aux
    
    if opcionIngresada == "S" || opcionIngresada == "s" || opcionIngresada == "SI" || opcionIngresada == "si" {
    deposito()                                         
    } else if opcionIngresada == "no" || opcionIngresada == "NO" || opcionIngresada == "N" || opcionIngresada == "n" {
      print("¿Usted desea realizar otra operacion? (s/n)")
      aux = readLine()!
      opcionIngresada = aux
    if opcionIngresada == "n" {
      print("Gracias por usar el cajero, Vuelva pronto!")
      opcionIngresada = "4"
      } 
    }

    case "2":
    retiro()
    print("¿Desea realizar otro retiro? (S/N)")
    aux = readLine()!
    opcionIngresada = aux

    if opcionIngresada == "n" {
      opcionIngresada = "4"
    } else {
      retiro()
    }

    case "3":
    print("Su nuevo saldo actual, es de $\(saldoTotal) pesos")
    
    case "4":
    print("!!Gracias por utilizar cajeros Bancoppel, vuelva pronto¡¡")
    opcionIngresada = "4"

    default:
    print("------Error------ \n Opcion no valida")  
  }
}