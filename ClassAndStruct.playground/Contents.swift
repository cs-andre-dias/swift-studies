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




// Computed property 

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width  = 0.0, height = 0.0
}

struct Rect {
    var origin  = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))

let initialSquareCenter = square.center

square.center = Point(x: 15.0, y: 15.0)

print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
