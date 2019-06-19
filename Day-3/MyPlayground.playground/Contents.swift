//CLOSURES WITH LOCAL PARAMS

let birthday: (String, Int) -> () = { name, age in print ("Happy Birthday \(name), now \(age)") }

birthday("Usman", 9)


//CLOSURES WITHOUT PARAMS

let birthday2: (String, Int) -> () = { print ("Happy Birthday \($0), now \($1)") }

birthday("Usman", 9)


//CLOSURES WITH RETURNS

let birthday3: (String, Int) -> (Int) = { print ("Happy Birthday \($0), now \($1)"); return 21}

print(String(birthday3("Usman", 9)))



//CLOSURES SORTING EXAMPLE

let names = ["Ali", "Boy", "Cat"]

print(names.sorted(by: >))




//TRAILING CLOSURES


let conv =
[
    1:"One", 2:"Two", 3:"Three", 4:"Four", 5: "Five"
]

let numbers = [21,35,44]

let convnumbers = numbers.map{(number:Int) -> String in          //HOW DO I ADD THE CONVNUMBERS:(INPUT Params) -> (OUTPUT Params) here ?
    
    var output = ""
    var num = number
    
    repeat{
        output = conv[num%10]! + output
        num/=10
    }while(num>0)
    
    return output;
}

print(convnumbers)


//CLOSURES EXAMPLE WITH PARAMETERS

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

func MakeAnIncrementor(amount: Int) -> () -> Int
{
    var Total:Int = 0;
    func TheIncrementor() -> Int
    {
        Total+=amount;
        return Total;
    }
    return TheIncrementor
}

var i = MakeAnIncrementor(amount:5);
print(i());
print(i());


//PASSING CLOSURES AS ARGUMENTS

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// Prints "5"

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
// Prints "5"

print("Now serving \(customerProvider())!")
// Prints "Now serving Chris!"
print(customersInLine.count)
// Prints "4"

// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
func serve(customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customerProvider: { customersInLine.remove(at: 0) } )
// Prints "Now serving Alex!"




//YOUTUBE EXAMPLE

func FilterWithClosure (closure: (Int) -> Bool, numbers:[Int]) -> [Int]
{
    var filterednumbers = [Int]()
    for num in numbers{
        if(closure(num))
        {
            filterednumbers.append(num)
        }
    }
    return filterednumbers
}

func GreaterThanThree (value:Int) -> Bool
{
    return value>3
}

let filterednums = FilterWithClosure(closure: GreaterThanThree, numbers: [1,2,3,4,5,6])

//CLOSURE DIVISIBLE LIST EXAMPLE


func GetDivisible(closure: (Int) -> Bool, numbers:[Int])
{
    var List = [Int]()
    for num in numbers
    {
        if(closure(num))
        {
            List.append(num)
        }
    }
    return
}

func DivisibleByFiveClosure (val : Int) -> Bool
{
    return val%5==0
}

let DivisibleByFives = GetDivisible(closure: DivisibleByFiveClosure, numbers: [1,3,5,10,15,23])



//CLOSURES AS CALLBACKS

func CallsClosure(clo: () -> String, clo2: () -> Int)
{
    print ("In Calls Closure A")
    print(clo());
    print ("In Calls Closure B")
    print(clo2());
}

CallsClosure(clo: { () -> String in
    return "1"
}) { () -> Int in
    return 2
}



//AUTOCLOSURES

func CallsClosureAuto(clo: () -> String, clo2: (Int) -> Int)
{
    print ("In Calls Closure A")
    print(clo());
    print ("In Calls Closure B")
    print(clo2(2));
}

CallsClosureAuto(clo: { () -> String in
    return "1"
}) { (num) -> Int in
    return num
}

//--------



func complexFunction(clo: @autoclosure () -> String) {
    print("Inside Function A")
    print(clo())
    print("Inside Function B")
}

// Now simply call the function without closure like braces.

complexFunction(clo: "Nothing")







//ENUMERATORS

enum BarCode
{
    case upc(Int, Int, Int, Int)
    case qr(String)
}

var ABC = BarCode.upc(1, 2, 3, 4);
ABC = BarCode.qr("ABCDEFGHIJ")

switch ABC
{
case .upc(let A, let B, let C, let D):
    print(A)
    
case .qr(let A):
    print(A)
}

enum Planet : Int, CaseIterable
{
    case Mercury = 1, Venus, Earth, Mars
}

var s = Planet(rawValue: 1)
var t = Planet.Venus.rawValue

var count = Planet.allCases.count



//-------------ARITHMATIC EXAMPLE (RECURSSIVE ENUMS)




indirect enum ArithmaticExpression{
    case number (Int)
    case add (ArithmaticExpression, ArithmaticExpression)
}

var one = ArithmaticExpression.number(1)
var five = ArithmaticExpression.number(5)
var sum = ArithmaticExpression.add(one, five)

func Evaluate (_ X: ArithmaticExpression) -> Int
{
    switch X
    {
    case let .number(val):
        return val
    
    case let .add(left, right):
        return Evaluate(left) + Evaluate(right)
    }
}

Evaluate(sum)
