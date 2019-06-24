extension Double
{
    var km: Double {return self/1000}
    
    func Bla() -> Int {print("bla"); return 0;}
}

let inch = 8.6.Bla()


protocol X{
    init(x:String)
}

class Bla : X
{
    required init(x:String)
    {
        
    }
}
