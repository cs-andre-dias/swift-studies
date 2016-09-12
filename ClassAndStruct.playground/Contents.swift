// Class and Struct

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()

let someVideoMode = VideoMode()

print("the width of someResolution is \(someResolution.width)")

print("the width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280

print("the width of someVideoMode is \(someVideoMode.resolution.width)")


// value type

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048

print("cinema is now \(cinema.width) pixels wide")

print("hd is still \(hd.width) pixels wide")

// enum is value type

enum CompassPoint {
    case North, South, East, West
}

var currentDirection = CompassPoint.West

let rememberedDirection = currentDirection

currentDirection = .East

if rememberedDirection == .West {
    print("The remembered direction is still .West")
}

//Reference Type

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print("The framRate property of tenEighty is now \(tenEighty.frameRate)")

//identity operator

if tenEighty === alsoTenEighty{
    print("The same")
}