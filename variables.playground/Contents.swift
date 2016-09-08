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


// Arrays

var bucketList = ["Monte Everest"]
bucketList.append("Monte Fiji")
bucketList.append("Kilimanjaro")
bucketList.append("Pico da Neblina")
bucketList.removeAtIndex(2)
bucketList.append("Monte Olimpo")
print(bucketList)
bucketList.count

bucketList[0...2]

bucketList.insert("Viajar o mundo ", atIndex: 4)

bucketList.count

for i in bucketList{
    print(i)
}

var dict1:Dictionary<String,Int> = ["primeiro": 1, "segundo": 2]

print(dict1["primeiro"])

dict1["terceiro"] = 3

dict1
dict1.removeValueForKey("terceiro")

for (key, value) in dict1 {
    print("A chave \(key) tem o valor \(value)")
}

for keys in dict1.keys {
    print(keys)
}

for values in dict1.values {
    print(values)
}

let arrayValues = Array(dict1.values)


var georgiaZip = [30001, 30003, 30004, 30002]
var newYorkZip = [40001, 40002, 40003, 40008]

let zipCodes = ["Georgia": georgiaZip, "New York" : newYorkZip]

zipCodes["Georgia"]
var teste = Array(zipCodes.values)
teste[0]

print("The ZipCode of Georgia is \(teste[0])")


// Sets

var setTest: Set = ["Apple", "Google", "Twitter"]
var superSet:Set = ["Apple", "Microsoft"]

setTest.insert("Airbnb")

func testeDeFuncao(names: String...){
    for name in names{
        print("Esse é o \(name)")
    }
}

testeDeFuncao("andre", "jorge", "joao")

// Closures

//Forma mais verbosa
//func sortAscending(i:Int, j:Int) -> Bool{
//    return i < j
//}

//Usando feature de closures, nao necessita da keyword func e nome da func
//let volunteersSorted = volunterCount.sort({(i:Int, j:Int) -> Bool in return i < j })

//pode-se ainda usar inferencia de tipos
//let volunteersSorted = volunterCount.sort({i, j in i < j})

//Maneira menos verbosa ainda
//let volunteersSorted = volunterCount.sort({ $0 < $1})

var volunterCount = [20,45,4,100,29,30,42, 50]

//A meno verbosa ainda é essa:
let volunteersSorted = volunterCount.sort { $0 < $1 }
print(volunteersSorted)

//func makeTownGrand() -> (Int, Int) -> Int{
//    func buildRoads(lightsToAdd: Int, toLights: Int) -> Int{
//        return toLights + lightsToAdd
//    }
//    return buildRoads
//}
//
//var stoplights = 4
// Éssa é uma opcao
//stoplights = makeTownGrand()(4, stoplights)

//Ou poderia:
//var townPlan = makeTownGrand()
// stoplights = townPlan(4, stoplights)

//print("Temos \(stoplights) stoplights")

func makeTownGrand(budget: Int, condition: Int -> Bool) -> ((Int, Int ) -> Int)? {
    if condition(budget){
        func buildRoads(lightsToAdd: Int, toLights: Int) -> Int{
            return toLights + lightsToAdd
        }
        return buildRoads
    }else{
        return nil
    }
}
func evaluateBudget(budget: Int) -> Bool{
    return budget > 10000
}
var stoplights = 4

if let townPlan = makeTownGrand(1000, condition: evaluateBudget){
    stoplights = townPlan(4, stoplights)
}

print("Aqui tem \(stoplights) stoplights")


func makeGrowthTracker(forGrowth growth:Int) -> () -> Int{
    var totalGrowth = 0
    func growthTracker() -> Int{
        totalGrowth += growth
        return totalGrowth
    }
    return growthTracker
}

var currentPop = 5320
let growby1500 = makeGrowthTracker(forGrowth: 1500)
growby1500()
growby1500()
growby1500()
currentPop += growby1500()
let newGroupBy = growby1500
newGroupBy()

// Map

let precinctPop = [1244, 2022, 2157]
let projectedPop = precinctPop.map {
    (pop: Int) -> Int in
    return pop * 2
}
print(projectedPop)

let bigProjections = projectedPop.filter{
    (project: Int) -> Bool in
    return project > 4000
}
bigProjections

//let totalProject = projectedPop.reduce(0){
//    (accumulatedProject: Int, precintProject: Int) -> Int in
//    return accumulatedProject + precintProject
//}

//Forma bem reduzida
let totalProject = projectedPop.reduce(0){ $0 + $1 }

totalProject



// Curried Functions

func greetingFor(name: String) -> (String) -> String {
    func greeting(greeting: String) -> String {
        return "\(name), \(greeting)"
    }
    return greeting
}

//Em apenas uma linha

let greting = greetingFor("Andre")("Hello")

//Ou:

let gretter = greetingFor("Pedro")

let theGreeting = gretter("Hi there")

print(greting)

print(theGreeting)


// Closures

var subtract  = {
    (a: Int, b: Int) -> Int in
    if a <= 0 {
        return 0
    }else{
        return a - b
    }
}

subtract(0, 10)


enum WeatherType{
    case Sun
    case Cloud
    case Rain
    case Wind(speed: Int)
    case Snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .Sun:
        return nil
    case .Wind(let speed) where speed < 10:
        return "meh"
    case .Cloud, .Wind:
        return "Dislike"
    case .Rain, .Snow:
        return "hate"
    }
}

getHaterStatus(WeatherType.Wind(speed: 9))
