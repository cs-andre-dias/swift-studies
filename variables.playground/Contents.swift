//: Playground - noun: a place where people can play

import UIKit


var str = "name"
print(str)

//var quatro = "4"

//quatro += 2

let posteDeLuz: Int = 4

// quatro += 2

var populacao: Int

populacao = 60000

let nomeCidade: String = "Santos"

var desempregados: Int = 4000

print("A cidade de \(nomeCidade) tem uma populacao de \(populacao) habitantes e apenas \(posteDeLuz) postes de luz, e um total de \(desempregados) desempregados")

var posto: Bool = true

if posto {
    print("true")
}else{
    print("false")
}

// Ternario 

posto ? print("true") : print ("false")


print("o tamanho de uma int varia, int normal: \(Int.max), int8: \(Int8.max), int16: \(Int16.max), int32 : \(Int32.max), int 64: \(Int64.max)")

UInt8.max

var divisao:Float = 11 / 3

var z: Int8 = 120

var y = z &* 10

print(y)

var floating: Float = 3.4

var doubling: Double = 3.4

// var soma = floating + doubling

var population:Int = 10345

switch population {
case 0...2000:
      print("pouca populacao")
case 2001...5000:
    print("media populacao")
case 5001...10000:
    print("muita populacao")
case 10001...100000:
    print("maior galera")
default:
    print("nao sabemos a populacao")
}

var statusCode: Int = 230

var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString += " Infrmatinal, \(statusCode).)"
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString +=  " Redirection, \(statusCode)"
case 400...417:
    errorString += " Client error, \(statusCode)"
case 500...505:
    errorString += " Server error, \(statusCode)"
case let unknowCode where (unknowCode >= 200 && unknowCode < 300) || unknowCode > 505:
    errorString += " \(unknowCode) is not a know error code."
default:
    errorString = "Unexpected error"
}

var hello: String = "\u{0048}\u{0065}\u{006C}\u{006C}\u{006F}, how are you "

var primeiraPosicao  = hello.startIndex

var quintaPosicao = 4

var end = primeiraPosicao.advancedBy(quintaPosicao)


var range = primeiraPosicao...end


hello[range]

// Optionals

var optionalTest: String?

optionalTest = "404"

// print(optionalTest)

//if optionalTest != nil {
//    let theOptional = optionalTest!
//    print(theOptional)
//}

// Uma melhor opcao é usar o unwrapping atraves do if com variavel temporaria

//if let theOptional = optionalTest{
//    print(theOptional)
//}

// pode-se juntar mais de uma condicao no teste do if let

//por exemplo: 

if let theOptional = optionalTest, optionalInt = Int(theOptional)
    where optionalInt == 404{
    print(theOptional)
}else{
    print("Erro")
}

// Aqui em cima ele esta verificando se tem algum valor dentro da variavel
// se tem ele verifica se pode transforma em integer com o metodo Int()
// e ainda verifica se o resultado dessa conversao e o inteiro 404 com o where



