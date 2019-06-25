//PROTOCOLS AND PROPERTIES

protocol HasX
{
    var X: Int {get}
}

//STORED
class ShouldHaveX : HasX
{
    var X:Int = 5
}


//COMPUTED
class ShouldAlsoHaveX: HasX
{
    var X:Int {return 5}
}






//PROTOCOLS AND METHODS

protocol HasY
{
    func Y (_ a: Int) -> ()
}

class SHouldHaveY: HasY
{
    func Y (_ a: Int) -> ()
    {
        print(a)
    }
}





//PROTOCOLS AND MUTATING METHODS

protocol MutatingVal
{
    mutating func Toggle()->()
}


struct Bla:MutatingVal
{
    var t:Bool=false
    
    mutating func Toggle() {
        t = !t
    }
}




//PROTOCOLS WITH INITS

protocol MakesInit
{
    init(_ a: Int)
}









//PROTOCOL COMPOSITION

protocol Named {
    var name: String { get }
}
protocol Aged {
    var age: Int { get }
}
struct Person: Named, Aged {
    var name: String
    var age: Int
}
func wishHappyBirthday(to celebrator: Named & Aged) {
    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
}
let birthdayPerson = Person(name: "Malcolm", age: 21)
wishHappyBirthday(to: birthdayPerson)






//OPTIONAL PROTOCOL

protocol HasOpt
{
    func OptFunc() -> ()
}

extension HasOpt
{
    func OptFunc() -> ()
    {
        //EXTENDING MAKES THE PROTOCOL OPTIONAL
    }
}

struct X:HasOpt
{
    func OptFunc() ->()
    {
        print("A")
    }
}



import Foundation
@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
}

class Counter {
    var count = 0
    var dataSource: CounterDataSource?
    func increment() {
        if let amount = dataSource?.increment?(forCount: count) {
            count += amount
        } else if let amount = dataSource?.fixedIncrement {
            count += amount
        }
    }
    
    init () {}
}
