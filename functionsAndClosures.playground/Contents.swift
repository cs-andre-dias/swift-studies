// Functions and Closures


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


var subtract  = {
    (a: Int, b: Int) -> Int in
    if a <= 0 {
        return 0
    }else{
        return a - b
    }
}

subtract(0, 10)


var image = [
    [3, 7, 10],
    [6, 2, 9],
    [0, 1, 5]
]

print(image.count)

image[0].count

func raiseLowerValuesOfImage(inout image: [[Int]]) {
    for linha in 0 ..< image.count {
        for coluna in 0 ..< image[linha].count{
            print(image[linha][coluna])
            if(image[linha][coluna] < 5) {
                image[linha][coluna] = 5
            }
        }
    }
    image
}


raiseLowerValuesOfImage(&image)





