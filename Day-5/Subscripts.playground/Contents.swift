struct MyStruct
{
    var a : Int
    var b : String
    var c : Int
    
    init(_ A: Int,_ B: String,_ C: Int)
    {
        self.a = A;
        self.b = B;
        self.c = C
    }
    
    subscript (A:Int, C:Int) -> String
    {
        get
        {
            if(A==a && C==c)
            {
                return b;
            }
                
            else
            {
                return "Not Found"
            }
        }
        
        set
        {
            if(A==a && C==c)
            {
                b = newValue
            }
        }
    }
}

var Temp = MyStruct(0,"A",0)

print(Temp[0,0])
Temp[0,0] = "B"
print(Temp[0,0])











struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(_ rows: Int,_ columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var temp2 = Matrix(3,3)

print(temp2[2, 1])
temp2[2,1] = 1.0
print(temp2[2, 1])





enum Planet : Int
{
    case A = 1,B,C,D
    
    subscript (n:Int) -> Planet                         //https://bugs.swift.org/browse/SR-7270
    {
        get
        {
            return Planet(rawValue: n)!
        }
    }
}


class Square
{
    var l: Int
    var b: Int
    var n: String?
    
    init(_ a:Int,_ c:Int)
    {
        l=a;
        self.b=c
        n = ""
    }
    
    subscript (_ a: Int, _ c: Int) -> String
    {
        get{
            if(a==l && c==b)
            {
                return n!
            }
            return "nil"
        }
        
        set
        {
            if(a==l && c==b)
            {
                n = newValue
            }
        }
    }
    
    subscript (s: String) -> String
    {
        if(s=="class")
        {
            return "Square"
        }
        return ""
    }
}

var bla = Square(0,0)

print(bla[0,0])

bla[0,0] = "Usman"

print(bla[0,0])

print(bla["class"])
