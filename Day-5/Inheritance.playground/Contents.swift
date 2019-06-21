class Shape
{
    var L: Int = 0
    var B: Int = 0
    
    init(_ a:Int, _ b:Int)
    {
        print("Shape init")
        L=a;
        B=b;
        GetSum();
    }
    
    func GetSum() -> Int
    {
        print("GETSUM OF SHAPE")
        return L*B
    }
}




class Square : Shape
{
    var isSquare:Bool = false;
    
    override init(_ a:Int, _ b:Int)
    {
        super.init(a,b)
        
        
        
        isSquare = true;
        
        
        
        print("Square init A")
        
        
        
        print("Square init B")
    }
    
    override func GetSum() -> Int
    {
        print("GETSUM OF SQUARE")
        return L*B
    }
}

var a = Square(2,2)
//var b: Shape = Square(2,2)
//b.GetSum();
//var c: Shape = Shape(2,2)
//c.GetSum()


class A
{
    var s:String
    init(a:String)
    {
        s=a
        print("init(a:String)")
    }
    
    convenience init ()
    {
        self.init(a:"null")
        print("convenience init ()")
    }
}

class B : A
{
    init(s2: String)
    {
        super.init(a: s2)
        print("init(s2: String)")
    }
}

var t:A = A()
