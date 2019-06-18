//CHECKING ARRAYS

var someInts = [Int] ();

someInts.append(5);
someInts.append(6);

someInts[someInts.startIndex] = 2;

someInts[someInts.startIndex + 1] = 1;

print(someInts);

var threedoubles = [Int] (repeating: 2, count: 3);
print(threedoubles);

var anotherThreeDoubles = [Int] (repeating: 3, count: 3);

var sixdoubles = threedoubles+anotherThreeDoubles;
print(sixdoubles);

var arr:[Int] = [1,2,3,4,5]

for number in arr
{
    print("Array value : \(number)");
}

arr.endIndex

for i in 0..<arr.endIndex
{
   print("Array value : \(arr[i])");
}

arr[2...3] = [10, 20];              //WHY DOES THIS DELETE THE 5TH ELEMENT

for i in 0..<arr.endIndex
{
    print("Array value : \(arr[i])");
}

for (index, value) in arr.enumerated()
{
    print ("Index : \(index), Value : \(value)");
}

var setofInts: Set<Int> =  [9,8,7,6];


//DICTIONARY

var dictStrings = [Int : String]();

dictStrings[1] = "Usman";
dictStrings[4] = "Adil"

for item in dictStrings
{
    print("Item details : \(item.key), \(item.value)")
}

let iarr = dictStrings.keys;

for item in iarr
{
    print(item);
}

//CONTROL FLOWS

for _ in iarr
{
    print("Hello");
}


for x in stride(from: 5, to: 0, by: -1)
{
    print(x)
}

var a = 4

switch a {
case 1:
    print("1")
case 4:
    print("4", terminator: ""); print("44")
    fallthrough
default:
    print ("Default")
}

//FUNCTIONS

func greet(input : String) -> Void {
    print (input);
}

greet(input: String(5))

func greetagain(name: String) -> String
{
    return String("Hello, \(name)");
}

print(greetagain(name: "Usman"))

func GetLimits(arr : [Int]) -> (Min: Int, Max: Int)
{
    return (Int(arr.min()!), Int(arr.max()!))
}

let karr : [Int] = [1,2,5,3];
print(GetLimits(arr: karr).1);

func Add(Numbers: Double...) -> Double
{
    var a: Double = 0
    for x in Numbers
    {
        a+=x
    }
    return a
}

print(Add(Numbers: 2.0, 8.0))

func Swap ( a: inout Int, _ b: inout Int)
{
    var bla : Int
    bla = a;
    a = b;
    b = bla;
}

var x,y : Int;
x = 1; y = 2

Swap(a: &x, &y);

print(String(x)+String(y));





func AddInt(_ a : Int, _ b : Int) -> Int{
    return a+b;
}

var AddIntCover : (Int, Int) -> Int = AddInt;

print(AddIntCover(3,2))


func PrintMathResult(AddInta:(_ a:Int, _ b:Int) -> Int, _ x: Int, _ y:Int)
{
    print(String(AddInt(x,y)))
}

PrintMathResult(AddInta: AddInt, 2, 4)




//Nested function with parameters and return values

func ReturnFunc(A: Bool) -> (Int, Int) -> Int
{
    return A ? AddInt : AddIntCover;
}

var X = ReturnFunc(A: false)

print(String(X(2,3)));




//Function Types as Return Types

func Up(_ val: Int) -> Int{
    return val+1
}

func Down(_ val: Int) -> Int{
    return val-1;
}

func Choose(A: Bool) -> (Int) -> Int
{
    return A ? Up : Down
}

var Temp = Choose(A:false);

print(Temp(8))

