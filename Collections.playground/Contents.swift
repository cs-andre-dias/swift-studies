// Collections

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