struct A
{
    var a:Int
    var b:Int
    
    static func + (X:A, Y:A) -> A
    {
        func C()->()
        {
        
        }
        
        var T = A(a:0, b:0)
        T.a = X.a + Y.a
        T.b = X.b + Y.b
        
        return T
    }
}

var q = A(a:1,b:2)
var w = A(a:3,b:4)


var e = q+w

