//STRUCTS

struct Coord{
    var X:Int=0;
    var Y:Int=0;
}

var A = Coord(X: 20, Y: 40);
var B = Coord();

print(A.X + A.Y)

A.X = 5;
A.Y = 4;

B.X = 1;
B.Y = 2;

A=B;


//CLASSES

class Coordi{
    var X: Int
    var Y: Int
    
    init()
    {
        X = 9;
        Y = 9;
    }
}

var C = Coordi()

var D = Coordi()

if(D===C)
{
    print("Same Referrence")
} else { print ("Not Same Referrence")}




//PROPERTIES

struct point
{
    var x: Int
    var y : Int
    
    var Sum:point{
        
        get{
            return point(x+y,x+y)
        }
        set(newxy){
            x = newxy.x
            y = newxy.y
        }
        
        willSet
        {
            
        }
    }
    
    init(_ a:Int,_ b:Int)
    {
        x=a;
        y=b;
    }
}

var temp = point(2,1)
print(temp.Sum)
temp.Sum = point(5,5)
print(temp.Sum)



//LAZY VARIABLES

struct LazyVar
{
    var a: Int {
        willSet {
            print("Setting \(newValue)")
        }
        didSet
        {
            print("Set new value : \(oldValue)")
        }
    }
    
    init()
    {
        print("Lazy Variable created!")
        a = 10;
    }
}

struct LazyEx
{
    lazy var LazyVariable = LazyVar()
    init()
    {
        print("Lazy example created")
    }
}

//DOES NOT CREATE LAZY VARIABLE
var ab:LazyEx = LazyEx()

//LAZY VARIABLE CREATED HERE
ab.LazyVariable.a = 5





//MUTATING FUNCTIONS

struct X{
    var a:Int
    static var b: Int = 6
    
    init(_ i:Int)
    {
        a = i;
    }
    
    init()
    {
        a=0
    }
    
    //NEED TO WRITE MUTATING IF WE'RE MODIFYING ANY VALUES
    mutating func ModifyA(x: Int) -> ()
    {
        a = x
    }
    
    func PrintA() -> ()
    {
        print(a)
    }
    
    static func Modifyb(i: Int) -> ()           //No need to use Mutating to modify static values
    {
        b = i
    }
    
    static func PrintB() -> ()
    {
        print(b)
    }
}

var Z: X = X(7)

Z.PrintA()
Z.ModifyA(x: (90))
Z.PrintA()
X.Modifyb(i: 5)
X.PrintB()
