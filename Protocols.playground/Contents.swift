// Protocols


func padding(amount: Int) -> String {
    var paddingString = ""
    
    for _ in 0 ..< amount {
        paddingString += " "
    }
    return paddingString
}

protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumn: Int { get }
    
    func labelForRow(row: Int) -> String
    
    func labelForColumn(column: Int) -> String
    
    func itemForRow(row: Int, column: Int) -> Int
}

func printTable(dataSource: protocol<TabularDataSource, CustomStringConvertible>){
    
    print("Table: \(dataSource.description)")
    
    let rowLabels = (0 ..< dataSource.numberOfRows).map{ dataSource.labelForRow($0)}
    
    let columnLabels = (0 ..< dataSource.numberOfColumn).map{ dataSource.labelForColumn($0)}
    
    let rowLabelWidths = rowLabels.map { $0.characters.count }
    
    guard let maxRowLabelWidth = rowLabelWidths.maxElement() else {
        return
    }
    
    var firstRow: String = padding(maxRowLabelWidth) + " |"
    
    var columnWidths = [Int]()
    
    for columnLabel in columnLabels{
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnHeader.characters.count)
    }
    
    print(firstRow)
    
    for i in 0 ..< dataSource.numberOfRows {
        let paddingAmount = maxRowLabelWidth - rowLabelWidths[i]
        var out  = rowLabels[i] + padding(paddingAmount) + " |"
        
        for j in 0 ..< dataSource.numberOfColumn {
            let item = dataSource.itemForRow(i, column: j)
            let itemString = " \(item) |"
            let paddingAmount = columnWidths[j] - itemString.characters.count
            out += padding(paddingAmount) + itemString
        }
        
        
        print(out)
    }
}

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department: TabularDataSource, CustomStringConvertible {
    let name: String
    var people = [Person]()
    
    var description: String {
        return "Department (\(name))"
    }
    
    init(name: String){
        self.name = name
    }
    
    mutating func addPerson(person: Person){
        people.append(person)
    }
    
    var numberOfRows: Int {
        return people.count
    }
    
    var numberOfColumn: Int {
        return 2
    }
    
    func labelForRow(row: Int) -> String {
        return people[row].name
    }
    
    func labelForColumn(column: Int) -> String {
        switch column {
        case 0: return "Age"
        case 1: return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }
    
    func itemForRow(row: Int, column: Int) -> Int {
        let person = people[row]
        switch column {
        case 0: return person.age
        case 1: return person.yearsOfExperience
        default: fatalError("Invalid column!")
        }
    }
    
}

var department = Department(name: "Engineering")
department.addPerson(Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.addPerson(Person(name: "Karen", age: 40, yearsOfExperience: 18))
department.addPerson(Person(name: "Fred", age: 50, yearsOfExperience: 20))

printTable(department)
