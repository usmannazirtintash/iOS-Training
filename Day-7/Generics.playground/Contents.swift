//GENERIC FUNCTION

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}


//GENERIC STRUCT
struct Stack<Bla: Equatable> {
    var items = [Bla]()
    mutating func push(_ item: Bla) {
        items.append(item)
    }
    mutating func pop() -> Bla {
        return items.removeLast()
    }
    
    func BLA(a:Bla, b:Bla)
    {
        if (a==b)
        {
            print("X")
        }
    }
}


//GENERIC CLASS
class StackClass<Bla>
{
    var items = [Bla]()
    
    func push(_ item: Bla) {
        items.append(item)
    }
    
    func pop() -> Bla {
        return items.removeLast()
    }
}

//ASSOCIATED TYPES IN PROTOCOL

protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

struct StackGeneric<Element>: Container {
    // original Stack<Element> implementation
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    // conformance to the Container protocol
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}


//generic funcction

func fooSWAP <T> (_ a: inout T,_ b: inout T) -> ()
{
    let x = a;
    a=b;
    b=x;
}


var x:Int = 3;
var y:Int = 4

fooSWAP(&x,&y)
print(String(x) + " " + String(y))



//generic structs

struct Store <T>
{
    var arr: Array<T> = []
    
    mutating func AddtoStore (_ i:T) -> ()
    {
        arr.append(i)
    }
    
    func GetSize () -> Int
    {
        return arr.count
    }
}


var s_Int = Store<Int>()
s_Int.AddtoStore(5)
s_Int.AddtoStore(6)
s_Int.AddtoStore(7)


var s_String = Store<String>()
s_String.AddtoStore("Usman")
s_String.AddtoStore("Adil")
s_String.AddtoStore("Mahnoor")


extension Store
{
    subscript (_ i: T) -> T?
    {
        get{
            return arr.last         //how to prevent this ??
        }set(newValue){
            if let _newValue = newValue {
                arr.append(_newValue)
            }
        }
    }
}

s_Int[s_Int.GetSize()] = 8
s_Int.GetSize()

s_Int.AddtoStore(9)

protocol Addable
{
    associatedtype T
    
    mutating func Add(_ i:T) -> ()
}

extension Store : Addable
{
    typealias T = Int
    
    mutating func Add(_ i: Int) -> (){
        print("Multiplied")
    }
}

