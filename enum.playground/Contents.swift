// Enums



enum TextAlignment:Int {
    case Left = 20
    case Right = 21
    case Center = 22
    case Justify = 23
}

var alignment = TextAlignment.Left

switch alignment {
case .Left:
    print("Its left")
case .Right:
    print("Its Right")
case .Center:
    print("Its Center")
case .Justify:
    print("Its justified")
}


print("Left has raw value of \(TextAlignment.Left.rawValue)")

enum Lightbulb {
    case On
    case Off
    
    func tempAmb(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 15.0
        case .Off:
            return ambient
        }
    }
    
    mutating func toogle(){
        switch self{
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}


var bulb = Lightbulb.On
var tempAtual = 25.0
var temp = bulb.tempAmb(tempAtual)
print(temp)
bulb.toogle()
print(tempAtual)


enum ShapeDimensions {
    case Square(Double)
    case Rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case let .Square(side):
            return side * side
            
        case let .Rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareArea = ShapeDimensions.Square(20.0)

print(squareArea.area())



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
